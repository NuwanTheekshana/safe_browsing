<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\suspicious_tbl;
use App\Models\find_data_tbl;
use DB;

class UrlController extends Controller
{
    public function welcome()
    {
        $get_data = find_data_tbl::orderBy('id', 'desc')->paginate(10);

        return view('welcome')->with('get_data', $get_data);
    }
    public function find_url(Request $request)
    {
        $main_url = $request->url;
        
        // check phish API
        $fields_string = http_build_query(array(
            "apiKey"=> "7j4t43c4o6o0f2cecx2xhwl4ovlupfipqdkcljxwj0wws1nlaeearzhy1wdz1smx", 
            "jobID" =>"eb595201-ffaf-4da3-a8fb-cfae4822cd7c", "insights"=>true,
            "urlInfo"=> array("url"=>$main_url )));
            $ch = curl_init();
            curl_setopt($ch,CURLOPT_URL, 'https://developers.checkphish.ai/api/neo/scan/status');
            curl_setopt($ch,CURLOPT_POST, true);
            curl_setopt($ch,CURLOPT_POSTFIELDS, $fields_string);
            curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0); 
            curl_setopt($ch, CURLOPT_TIMEOUT, 1000); 
            curl_setopt($ch,CURLOPT_RETURNTRANSFER, true); 
            $result = curl_exec($ch);
            if($result === false){
                echo 'Curl error: ' . curl_error($ch);
            }
            
             
            $result = curl_exec($ch);
            
                  $result=json_decode($result,true);
                  $disposition = $result['disposition'];

                  if ($disposition != "clean") 
                  {
                      $check_phish_api = 65;
                  }
                  else
                  {
                    $check_phish_api = 0;
                  }
            // print '<pre>';
            // print_r($result);
            // print '</pre>';


        // google API
        $url = $request->url;
        $apiKey = 'AIzaSyAG40isb8o8Y5Bb6uBTkdYys-VzBuB1mX8';

        $parameters = array( 
            'client' => array('clientId'=>'Evolved Marketing', 
            'clientVersion'=>'1.5.2'), 
            'threatInfo' => array('threatTypes'=>array('MALWARE', 'SOCIAL_ENGINEERING', 'UNWANTED_SOFTWARE', 'POTENTIALLY_HARMFUL_APPLICATION', 'THREAT_TYPE_UNSPECIFIED'), 
            'platformTypes'=>array('ANY_PLATFORM'), 
            'threatEntryTypes'=>array('URL', 'EXECUTABLE'),
            'threatEntries'=>array(array('url'=>$url) 

            )), 
        );

        $json = json_encode($parameters);

        $ch = curl_init(); curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($ch, CURLOPT_URL, 'https://safebrowsing.googleapis.com/v4/threatMatches:find?key=AIzaSyAG40isb8o8Y5Bb6uBTkdYys-VzBuB1mX8');
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
        $response = curl_exec($ch);
        $obj = json_decode($response, true);

        if($obj == null){
        //     print '<pre>';
        // print_r($obj['matches'][0]['threatType']);
        // print '</pre>';
            // dd("No issues found");
            // return redirect('/')->with('success', 'No issues found');
            $google_score = 0;
        }
        else
        {
            $google_score = 65;
        }
        
        $suspicious_tbl_data = DB::select('select * from suspicious_tbls');

        $score = $google_score + $check_phish_api;

        $https = strpos($main_url, 'https://');
        $http = strpos($main_url, 'http://');

        if ($https === false || $http === false) 
        {
            $scheme_val = false;
        }
        if ($https === 0 || $http === 0)
        {
            $scheme_val = true;
        }

        if ($scheme_val == true) 
        {
            $values = parse_url($main_url);
            
            $scheme = $values['scheme'];
            
            if (!isset($values['path']))
            {
                $path = null;
            }
            else
            {
                $path = $values['path'];
            }
            if (!isset($values['host'])) 
            {
                $host = null;
            }
            else
            {
                $host = $values['host'];
            }

            if ($host != null && $path == null) 
            {
                $host_split = explode('.', str_replace(array(",", "-"), '.',$host));
               
                $suspicious_tbl_data = suspicious_tbl::whereIn('domain_type', $host_split)->sum('domain_value');
                $suspicious_tbl_data_get = suspicious_tbl::whereIn('domain_type', $host_split)->get('domain_type');
                
                $score += $suspicious_tbl_data;

                $path_count_dts = substr_count($values['host'], ".");

                if ($path_count_dts >= 3) 
                {
                    $score += $path_count_dts * 3;
                }
                $path_count_slx = substr_count($values['host'], "-");

                if ($path_count_slx >= 4) 
                {
                    $score += $path_count_slx * 3;
                }
                
                
            }
            if ($path != null  && $host == null) 
            {
                $path_split = explode('.', $path);
                $suspicious_tbl_data = suspicious_tbl::whereIn('domain_type', $path_split)->sum('domain_value');
                $suspicious_tbl_data_get = suspicious_tbl::whereIn('domain_type', $path_split)->get('domain_value');

                $score += $suspicious_tbl_data;

                $path_count_dts = substr_count($values['path'], ".");

                if ($path_count_dts >= 3) 
                {
                    $score += $path_count_dts * 3;
                }
                $path_count_slx = substr_count($values['path'], "-");

                if ($path_count_slx >= 4) 
                {
                    $score += $path_count_slx * 3;
                }
                
            }
            if ($path != null  && $host != null) 
            {
                $host_split = explode('.', $host);
                $suspicious_tbl_data = suspicious_tbl::whereIn('domain_type', $host_split)->sum('domain_value');
                $suspicious_tbl_data_get = suspicious_tbl::whereIn('domain_type', $host_split)->get('domain_value');

                $score += $suspicious_tbl_data;

                $path_count_dts = substr_count($values['host'], ".");

                if ($path_count_dts >= 3) 
                {
                    $score += $path_count_dts * 3;
                }
                $path_count_slx = substr_count($values['host'], "-");

                if ($path_count_slx >= 4) 
                {
                    $score += $path_count_slx * 3;
                }
                
            }

            
            
        }
        else
        {
            $values = parse_url($main_url);
            $path = $values['path'];
            $path_split = explode('.', $path);
            $suspicious_tbl_data = suspicious_tbl::whereIn('domain_type', $path_split)->sum('domain_value');
            $suspicious_tbl_data_get = suspicious_tbl::whereIn('domain_type', $path_split)->get('domain_value');

            $score += $suspicious_tbl_data;
                
                $path_count_dts = substr_count($values['path'], ".");

                if ($path_count_dts >= 3) 
                {
                    $score += $path_count_dts * 3;
                }
                $path_count_slx = substr_count($values['path'], "-");

                if ($path_count_slx >= 4) 
                {
                    $score += $path_count_slx * 3;
                }
           
        }

            if ($score >= 100) 
            {
                $message = "MALICIOUS";
            }
            elseif ($score >= 90) 
            {
                $message = "SUSPICIOUS";
            }
            elseif ($score >= 80) 
            {
                $message = "LIKELY";
            }
            elseif ($score >= 65) 
            {
                $message = "POTENTIAL";
            }
            else
            {
                $message = "BENIGN";
            }

            

        // $values = parse_url($main_url);
        $host_val = str_replace("https://", "", $main_url);
        
        $host_ip = gethostbyname($host_val);

        $https = strpos($main_url, 'https://');
        $http = strpos($main_url, 'http://');

        if ($https === false || $http === false) 
        {
            $scheme_val = false;
        }
        if ($https === 0 || $http === 0)
        {
            $scheme_val = true;
        }

        if ($scheme_val == true) 
        {
            $values = parse_url($main_url);
            
            $scheme = $values['scheme'];
            
            if (!isset($values['path']))
            {
                $path = null;
            }
            else
            {
                $path = $values['path'];
                $path = str_replace("https://", "", $path);
            }
            if (!isset($values['host'])) 
            {
                $host = null;
            }
            else
            {
                $host = $values['host'];
                $host = str_replace("https://", "", $host);
                $host_ip = strstr($host_ip, '/', true);
            }

            if ($host == null && $path != null) 
            {
                $host_ip = $values['path'];
                $host_ip = str_replace("https://", "", $host_ip);
                $host_ip = strstr($host_ip, '/', true);
            }
            if ($host != null && $path == null) 
            {
                $host_ip = $values['host'];
                $host_ip = str_replace("https://", "", $host_ip);
                $host_ip = strstr($host_ip, '/', true);
            }
        }
        else
        {
            $values = parse_url($main_url);
            $host_ip = $values['path'];
            $host_ip = str_replace("https://", "", $host_ip);
            $host_ip = strstr($host_ip, '/', true);
            // $ip = gethostbyname($host_ip);

        }

        $ips = gethostbyname($host_ip);

        if ($ips == $host_ip) 
        {
            $ip_messege = "--";
        }
        else
        {
            $ip_messege = $ips;
            $link = 'http://ip-api.com/json/'.$ip_messege;
            $response = file_get_contents($link);
            $response=json_decode($response,true);

        }

        if (isset($response['country']))
            { 
                $country = $response['country'];
            }
            else
            {
                $country = "--";
            }

        
        $ip = $_SERVER['REMOTE_ADDR'];
        $datetime = date('Y-m-d H:i:s');

        $find_data_tbl = new find_data_tbl();
        $find_data_tbl->url = $main_url;
        $find_data_tbl->ip_address = $ip_messege;
        $find_data_tbl->Reputation = $message;
        $find_data_tbl->country = $country;
        $find_data_tbl->user_ip = $ip;
        $find_data_tbl->datetime = $datetime;
        $find_data_tbl->save();

    
        return response()->json(['message'=>$message, 'score'=>$score, 'url'=> $main_url, 'host_ip'=>$ip_messege, 'host'=>$response]);









    }
}
