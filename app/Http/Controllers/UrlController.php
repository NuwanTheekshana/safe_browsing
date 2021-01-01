<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\suspicious_tbl;
use DB;

class UrlController extends Controller
{
    public function result(Request $request)
    {
        $main_url = $request->url;
        
        echo $main_url;


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
        }
        else
        {
            $mal_val = $obj['matches'][0]['threatType'];
            dd($mal_val);
        $score = 0;
        $suspicious_tbl_data = DB::select('select * from suspicious_tbls');

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
                dd($score);
                
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


     
        // $values = parse_url($main_url);
        $host_val = str_replace("https://", "", $main_url);
        
        $host_ip = gethostbyname($host_val);
        dd($host_ip);

        dd($score);











    }
}
