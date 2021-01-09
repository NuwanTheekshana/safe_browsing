<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Safe Browsing</title>

            <!-- Fonts -->
            <link rel="dns-prefetch" href="//fonts.gstatic.com">
            <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">


            <!-- Scripts -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <meta name="csrf-token" content="{{ csrf_token() }}" />
            <script src="{{ asset('js/app.js') }}" defer></script>

            <!-- Styles -->
            <link href="{{ asset('css/app.css') }}" rel="stylesheet">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
        
            <style>
                /*! normalize.css v8.0.1 | MIT License | github.com/necolas/normalize.css */html{line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0}a{background-color:transparent}[hidden]{display:none}html{font-family:system-ui,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica Neue,Arial,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;line-height:1.5}*,:after,:before{box-sizing:border-box;border:0 solid #e2e8f0}a{color:inherit;text-decoration:inherit}svg,video{display:block;vertical-align:middle}video{max-width:100%;height:auto}.bg-white{--bg-opacity:1;background-color:#fff;background-color:rgba(255,255,255,var(--bg-opacity))}.bg-gray-100{--bg-opacity:1;background-color:#f7fafc;background-color:rgba(247,250,252,var(--bg-opacity))}.border-gray-200{--border-opacity:1;border-color:#edf2f7;border-color:rgba(237,242,247,var(--border-opacity))}.border-t{border-top-width:1px}.flex{display:flex}.grid{display:grid}.hidden{display:none}.items-center{align-items:center}.justify-center{justify-content:center}.font-semibold{font-weight:600}.h-5{height:1.25rem}.h-8{height:2rem}.h-16{height:4rem}.text-sm{font-size:.875rem}.text-lg{font-size:1.125rem}.leading-7{line-height:1.75rem}.mx-auto{margin-left:auto;margin-right:auto}.ml-1{margin-left:.25rem}.mt-2{margin-top:.5rem}.mr-2{margin-right:.5rem}.ml-2{margin-left:.5rem}.mt-4{margin-top:1rem}.ml-4{margin-left:1rem}.mt-8{margin-top:2rem}.ml-12{margin-left:3rem}.-mt-px{margin-top:-1px}.max-w-6xl{max-width:72rem}.min-h-screen{min-height:100vh}.overflow-hidden{overflow:hidden}.p-6{padding:1.5rem}.py-4{padding-top:1rem;padding-bottom:1rem}.px-6{padding-left:1.5rem;padding-right:1.5rem}.pt-8{padding-top:2rem}.fixed{position:fixed}.relative{position:relative}.top-0{top:0}.right-0{right:0}.shadow{box-shadow:0 1px 3px 0 rgba(0,0,0,.1),0 1px 2px 0 rgba(0,0,0,.06)}.text-center{text-align:center}.text-gray-200{--text-opacity:1;color:#edf2f7;color:rgba(237,242,247,var(--text-opacity))}.text-gray-300{--text-opacity:1;color:#e2e8f0;color:rgba(226,232,240,var(--text-opacity))}.text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}.text-gray-500{--text-opacity:1;color:#a0aec0;color:rgba(160,174,192,var(--text-opacity))}.text-gray-600{--text-opacity:1;color:#718096;color:rgba(113,128,150,var(--text-opacity))}.text-gray-700{--text-opacity:1;color:#4a5568;color:rgba(74,85,104,var(--text-opacity))}.text-gray-900{--text-opacity:1;color:#1a202c;color:rgba(26,32,44,var(--text-opacity))}.underline{text-decoration:underline}.antialiased{-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.w-5{width:1.25rem}.w-8{width:2rem}.w-auto{width:auto}.grid-cols-1{grid-template-columns:repeat(1,minmax(0,1fr))}@media (min-width:640px){.sm\:rounded-lg{border-radius:.5rem}.sm\:block{display:block}.sm\:items-center{align-items:center}.sm\:justify-start{justify-content:flex-start}.sm\:justify-between{justify-content:space-between}.sm\:h-20{height:5rem}.sm\:ml-0{margin-left:0}.sm\:px-6{padding-left:1.5rem;padding-right:1.5rem}.sm\:pt-0{padding-top:0}.sm\:text-left{text-align:left}.sm\:text-right{text-align:right}}@media (min-width:768px){.md\:border-t-0{border-top-width:0}.md\:border-l{border-left-width:1px}.md\:grid-cols-2{grid-template-columns:repeat(2,minmax(0,1fr))}}@media (min-width:1024px){.lg\:px-8{padding-left:2rem;padding-right:2rem}}@media (prefers-color-scheme:dark){.dark\:bg-gray-800{--bg-opacity:1;background-color:#2d3748;background-color:rgba(45,55,72,var(--bg-opacity))}.dark\:bg-gray-900{--bg-opacity:1;background-color:#1a202c;background-color:rgba(26,32,44,var(--bg-opacity))}.dark\:border-gray-700{--border-opacity:1;border-color:#4a5568;border-color:rgba(74,85,104,var(--border-opacity))}.dark\:text-white{--text-opacity:1;color:#fff;color:rgba(255,255,255,var(--text-opacity))}.dark\:text-gray-400{--text-opacity:1;color:#cbd5e0;color:rgba(203,213,224,var(--text-opacity))}}
            </style>

        <style>
            
    body,html{
    height: 100%;
    width: 100%;
    margin: 0;
    padding: 0;
    background-color: black;
    }

    .searchbar{
    margin-bottom: auto;
    margin-top: 12%;
    height: 60px;
    background-color: transparent;
 
    }
    .searchbar .card
    {
        width: 120%;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    caret-color:transparent;
    line-height: 40px;
    transition: width 0.4s linear;
    
    }

    ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
  color: #fff;
  opacity: 1; /* Firefox */
}

     .search_input{
    padding: 0 10px;
    width: 450px;
    caret-color:#fff;
    transition: width 0.4s linear;
    }

     

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    color:white;
    text-decoration:none;
    
    }
  
        </style>
    </head>
    <body >
           <div class="container">
                  <div class="form-group row">
                   <div class="col-md-5">
                    <img src="{{ asset('img/icon2.png') }}" alt="" style="width: 90%;height: 85%;margin-left: 20px;margin-top: 100px;display: inline;float: left;">

                   </div>
                    <div class="col-md-7 searchbar">
                        <input class="search_input" type="text" name="url" id="url" placeholder="SEARCH FOR A URL">
                        <button type="button" id="search_btn" style="background-color: transparent;border: none;" class="search_icon"><i class="fas fa-search"></i></button>

                        <br>
                        <h1 style="color: #fff;margin-top: 20px;font-family: Arial, Helvetica, sans-serif;">Make it securly</h1>
                        
                        

                        <div class="card mt-3" id="loading_img" style="background-color: transparent;display: none">
                            <div class="card-body">
                                
                                <img src="{{ asset('img/load.gif') }}" style="margin-left: 20px;" alt="">

                            </div>
                          </div>


                          <div class="card mt-3" id="main_card" style="background-color: #B0AFAF;display: none">
                            <div class="card-body">

                             <b>CLASSIFICATION : </b>
                              <button class="btn" id="result_btn" style="border-radius: 24px!important;"><i id="main_result_val"></i></button>

                            </div>
                          </div>
                     
                      <div class="card mt-3" id="main_card_summmery" style="background-color: #B0AFAF;display: none">
                        <div class="card-body">

                            <div class="form-group row">
                                <label for="source_url" class="col-sm-3 col-form-label"><b>Source URL  </b></label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="source_url">
                                </div>
                              </div>

                              <div class="form-group row">
                                <label for="source_country" class="col-sm-3 col-form-label"><b>Country  </b></label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="source_country">
                                </div>
                              </div>

                              <div class="form-group row">
                                <label for="source_ip" class="col-sm-3 col-form-label"><b>IP Address  </b></label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="source_ip">
                                </div>
                              </div>

                              <div class="form-group row">
                                <label for="source_owner" class="col-sm-3 col-form-label"><b>Owner  </b></label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="source_owner">
                                </div>
                              </div>




                        </div>
                      </div>
                      


                      <div class="card mt-3" style="background-color: transparent;width: 120%">
                        <p style="font-weight: bold;"></p>
                        <center>
                          <h1 style="color: #fff;margin-top: 20px;font-family: Arial, Helvetica, sans-serif;">FREQUENTLY USED LINKS</h1>
                        </center>
                       
                        <div class="card-body">
                          <table class="table table-striped" style="color: #fff">
                            <thead>
                              <tr>
                                <th><center>URL</center></th>
                                <th><center>IP Address</center> </th>
                                <th><center>Reputation</center></th>
                                <th><center>Country</center></th>
                              </tr>
                            </thead>
                            <tbody>
                              @foreach ($get_data as $data)
                              <tr>
                                <td>{{$data->url}}</td>
                                <td><center>{{$data->ip_address}}</center> </td>
                                <td><center>
                                  @if ($data->Reputation == "BENIGN" || $data->Reputation == "POTENTIAL")
                                  <button class="btn btn-success" id="result_btn" style="border-radius: 24px!important;"><i id="main_result_val">{{$data->Reputation}}</i></button>

                                  @elseif($data->Reputation == "LIKELY")
                                  <button class="btn btn-danger" id="result_btn" style="border-radius: 24px!important;"><i id="main_result_val">{{$data->Reputation}}</i></button>

                                  @elseif($data->Reputation == "SUSPICIOUS")
                                  <button class="btn btn-warning" id="result_btn" style="border-radius: 24px!important;"><i id="main_result_val">{{$data->Reputation}}</i></button>

                                  @elseif($data->Reputation == "MALICIOUS")
                                  <button class="btn btn-danger" id="result_btn" style="border-radius: 24px!important;"><i id="main_result_val">{{$data->Reputation}}</i></button>
                                  

                                  @endif
                                  
                                
                                
                                </center> </td>
                                <td><center>{{$data->country}}</center> </td>
                              </tr>
                              @endforeach
                              
                            </tbody>
                          </table>
                        </div>
                      </div>





                  </div>
                     

                          
                        </div>

                        
                        

        </div>

      


        <script>
            $('#search_btn').click(function () 
            {
                var url = $('#url').val();

                $('#result_card').hide();
                $('#main_card_summmery').hide();
                $('#main_card').hide();
                $('#loading_img').show();
                
                
                $('#main_result_val').val('');
                $('#source_url').val('');
                $('#source_country').val('');
                $('#source_owner').val('');
                $('#source_ip').val('');

                $.ajax({
                    type:'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                url:'{{url("/find_url")}}',
                data:{url:url},
                success:function(data)
                {
                    var host_ip = data.host_ip;
                    console.log(data.ss);
                   
                    var score = data.score;

                    if (score <= 65) 
                    {
                        $('#result_btn').addClass("btn-success");
                    }
                    else if (score <= 80) 
                    {
                        $('#main_result_val').addClass("btn-danger");
                    }
                    else if (score <= 90) 
                    {
                        $('#main_result_val').addClass("btn-warning");
                    }
                    else if (score > 90) 
                    {
                        $('#main_result_val').addClass("btn-danger");
                    }
                    $('#loading_img').hide();
                    $('#main_result_val').text(data.message);
                    $('#source_url').val(data.url);
                    $('#source_country').val(data.host.country);
                    $('#source_owner').val(data.host.org);
                    $('#source_ip').val(host_ip);
                    $('#main_card_summmery').show(1000);
                    $('#main_card').show(1000);
                    
                }

                });
            });
        </script>



    </body>
</html>
