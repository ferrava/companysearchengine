

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html lang="de" xmlns="http://www.w3.org/1999/xhtml" >
<head><title>
	Naturheilpraxis Lifecenter, Dorfstrasse 14, CH-6467 Schattdorf - Online-Terminbuchung
</title><meta http-equiv="content-type" content="text/html; charset=utf-8" /><meta http-equiv="cache-control" content="no-cache" /><meta http-equiv="content-script-type" content="text/javascript" /><meta http-equiv="content-style-type" content="text/css" /><meta name="copyright" content="Schulz &amp; Löw Consulting GmbH" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
<link rel="STYLESHEET" type="text/css" href="css/style.aspx?m=1735&amp;adr=0" />
<link rel="STYLESHEET" type="text/css" href="css/style.aspx?u=1&amp;m=1735" />
    
    
    <style type="text/css">
        <!--
        .fleft {float: left;}
        
        .tr-toggle {
            display: table-row;
        }
        .tr-toggle.collapse {
            display: none
        }

        a.moreless {
            text-decoration: none;
            display: inline-block;
            font-size: inherit;
            text-rendering: auto;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        a.moreless:hover {
            text-decoration: underline;
        }
        a.moreless:before {
            font: normal normal normal 14px/1 Arial;
            content: "\00ab";
            padding-right: 3px;
        }
        a.moreless:after {
            content: "Weniger";
        }
        a.moreless.collapsed:before {
            content: "Mehr";
            padding-right: 3px;
        }
        a.moreless.collapsed:after {
            font: normal normal normal 14px/1 Arial;
            content: "\00bb";
        }
        -->
    </style>
    
    


    <!--[if lte IE 6]>
        <link href="css/ie_png.css" type="text/css" rel="stylesheet" />
    <![endif]-->
    <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./js/tlscripta_1103.min.js"></script>
    


    <script type="text/javascript">
        //<![CDATA[
    
    
    
var atrItems=[];
var xmlHttpAwPerGroup;
function cbGetAwPerGroup() {
   if (xmlHttpAwPerGroup.readyState == 4 && xmlHttpAwPerGroup.status == 200) {
   var jsondata = eval('(' + xmlHttpAwPerGroup.responseText + ')');
   if (jsondata) {
       atrItems[jsondata.id + '_' + jsondata.grp] = jsondata.items;
       fillItems(jsondata.id, jsondata.grp, 0, false);
       stopWait();
   }
}
}
function axGetAwPerGroup(atr, grp) {
    abortAjax(xmlHttpAwPerGroup);
    xmlHttpAwPerGroup = GetXmlHttpObject();
    if (xmlHttpAwPerGroup === null) {
        alert('Your browser does not support AJAX!');
        return;
    }
    showWait();
    var url = '/lifecenter/ctr/ajax/awprogroup.aspx?m=1735';
    url += '&lang=';
    url += '&atr=' + atr;
    url += '&grp=' + grp;
    url += '&sid=' + Math.random();
    xmlHttpAwPerGroup.onreadystatechange = cbGetAwPerGroup;
    xmlHttpAwPerGroup.open('GET', url, true);
    xmlHttpAwPerGroup.send(null);
}
var selAtrItem = function(atr, value) {};

function WinOnLoadHandler(e, a) {

addMoreless();

WaitOnSubmit('fExtern');
Radio_AddEvent(); Checkbox_AddEvent();
ASPForm_Wait = function() { axClearCalendar(); showWait(); };
ModifyValidation();
}
addEvent(window, 'load', WinOnLoadHandler);
addEvent(window, 'pageshow', function(e) { if (e.persisted) {stopWait(); WinOnLoadHandler(e, true);} });
    
    function doAktion() {
        __doPostBack('ctl00$ctl00$cph_main$cph_Content$btnNext','');
    }

    function gotoUrl(url) {
        axClearCalendar();
         window.location = url;
    }

    
   


        //]]> 
    </script>

</head>
<body>
    
    
    
    <div id="overDiv" style="Z-INDEX:1000; VISIBILITY:hidden; POSITION:absolute"></div>
    <script type="text/javascript" src="js/overlib_mini.js">
<!-- overLIB (c) Erik Bosrup -->
    </script>
    
    <div id="containter">
    
        <div id="header"><h1>Doctena - Ihre Online-Terminbuchung</h1></div>
        
        
        <div id="sidebar">
            <!-- id="sidebar" -->
            
            <dl><dt>Adresse</dt>
                <dd>
                <ul><li class="m_1">Naturheilpraxis Lifecenter<br /><span class="m_2">Alex Inderkum</span><br /><span class="m_3">Naturarzt TEN</span></li>
<li>Dorfstrasse 14<br />CH-6467 Schattdorf</li>
<li>Tel.: 079 222 67 04</li>
<li><script type="text/javascript">
document.write(postit('E-Mail', 'ch', 'lifecenter', 'alex', '', 'mailto'));
</script><br /><a href="http://www.lifecenter.ch" target="_blank" class="hp">Website</a></li>

<li><a href="https://www.doctena.com/allgemeine-geschaeftsbedingungen/" target="_blank" class="recht">AGB</a></li>
<li><a href="https://www.doctena.com/datenschutzerklaerung/" target="_blank" class="recht">Datenschutz</a></li>
</ul>
                </dd></dl>
            
            
            <div><a id="cph_main_aLang" href="javascript:__doPostBack(&#39;ctl00$ctl00$cph_main$aLang&#39;,&#39;&#39;)"></a></div>
        </div>
        
        
        <div id="content">
            <form method="post" action="./default.aspx#step0" id="fExtern">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="HBAMzH5z+KTvo7gBiO+mUTUOczMOvzA3CyHL4cW0iEM8d0B5os2FrYxQjymhVY+W6LRMurt8OopuHXIbT+qIRAED1FmyjzOph1gi7FrR6wLClzd3" />
</div>

                <input name="ctl00$ctl00$cph_main$thLang" type="hidden" id="cph_main_thLang" />
                <input name="ctl00$ctl00$cph_main$thTag" type="hidden" id="cph_main_thTag" />
                

    
    
    

    
    
    <div class="align_center">
        
    <h1>Terminbuchung - Naturheilpraxis Lifecenter</h1>
        <input type="hidden" id="step" name="step" value="1" />
        <input type="hidden" id="dlg" name="dlg" value="0" />
        <input type="hidden" id="tli" name="tli" value="" />
        <input name="ctl00$ctl00$cph_main$cph_Content$th_attr" type="hidden" id="cph_main_cph_Content_th_attr" value="a1300494372=" /><input name="ctl00$ctl00$cph_main$cph_Content$th_res" type="hidden" id="cph_main_cph_Content_th_res" /><input name="ctl00$ctl00$cph_main$cph_Content$th_nfd" type="hidden" id="cph_main_cph_Content_th_nfd" /><input name="ctl00$ctl00$cph_main$cph_Content$th_ovd" type="hidden" id="cph_main_cph_Content_th_ovd" /><input name="ctl00$ctl00$cph_main$cph_Content$th_obd" type="hidden" id="cph_main_cph_Content_th_obd" /><a id="cph_main_cph_Content_btnNext" href="javascript:__doPostBack(&#39;ctl00$ctl00$cph_main$cph_Content$btnNext&#39;,&#39;&#39;)"></a>

    <noscript>
        <div class="noscript">
        <b>Bitte aktivieren Sie JavaScript!</b><br /><br />Um den vollen Funktionsumfang der Online-Terminbuchung zu nutzen, benötigen Sie JavaScript.<br />Eine Anleitung wie Sie JavaScript in Ihrem Browser einschalten, finden Sie <a href="http://www.enable-javascript.com/de/">hier</a>.
        </div>
    </noscript>
    
    
    
    
    
    
                    

                    <!-- / phStep1_off -->    
                
                    
                        <fieldset id="fsAttribut1">
                                 
                                
                                    <div class="head"> 
                                    <h3>1. Fragen zum Termin</h3><div>Bitte treffen Sie eine Auswahl:</div>
                                    </div>      
                                
                            
                            <div class="data">
                                    

 
    

                                
<table border="0" cellspacing="1" cellpadding="0" class="form"><tr class="grp"><th>&nbsp;<b>Behandlerauswahl</b>:<input type="hidden" name="th_cattr" id="ca1300494372" value="a1300494372" /></th><td>&nbsp;</td></tr><tr><th>&nbsp;</th><td class="radio"><table border="0" cellspacing="0" cellpadding="0" class="attr"><tr><td class="inp"><input type="radio" id="aw_1300494411a1300494372" name="a1300494372" value="1300494411" class="radio" /></td><td class="lbl"><label for="aw_1300494411a1300494372"><b>Alex Inderkum</b> (Krankenkassen anerkannt)</label></td></tr></table></td></tr><tr><th>&nbsp;</th><td class="radio"><table border="0" cellspacing="0" cellpadding="0" class="attr"><tr><td class="inp"><input type="radio" id="aw_1300494420a1300494372" name="a1300494372" value="1300494420" class="radio" /></td><td class="lbl"><label for="aw_1300494420a1300494372"><b>Mirco Inderkum</b> (Krankenkassen anerkannt)</label></td></tr></table></td></tr><tr><th>&nbsp;</th><td class="radio"><table border="0" cellspacing="0" cellpadding="0" class="attr"><tr><td class="inp"><input type="radio" id="aw_1300494453a1300494372" name="a1300494372" value="1300494453" class="radio" /></td><td class="lbl"><label for="aw_1300494453a1300494372">alle freien Massagetermine</label></td></tr></table></td></tr></table>

  



                            </div>                            
                            <div class="action">
                                
                                <input type="submit" class="submit" onclick="javascript: doAktion();" value="Weiter &raquo;" />
                            </div>
                        
                        </fieldset>
                    <!-- / phStep1_on -->    
                 <!-- /rDialog -->
        
    
    </div>

                
            
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="29C10549" />
	<input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="AMQf0SSpSMuQha/2zfqPSzmlyLAWzXOmTldezsk0xWVPJI6FdzE/nwl3w3rSWOTJxP61Ki/7yI2+YFpPYtUl95SKAIQFl7yAq5M43NTLOni/VjXmUii94PUR1yE+fPU2TULr0aG2OdwbQjxVYh3vaTz+cBaekv/MEqw1AQMXCfaPe8RxZLPTaSNWEI4tbQHwxF6NERJS6Mw1K9wzTmgEFts0e1VYfyNN6G/cS8xD9CI8gRUyWIcxWAGD6HqGv92iYfDY7m6AhtvPqTgyWDqqHHgI0EMobHLcC8d1dUGADuUNj6+i" />
</div></form>
            <div class="security">
            
                <div class="ssl">SSL-Verschlüsselte Datenübertragung</div>
            
            
             
            </div>
            <div class="imprint"><ul><li><a href="https://www.doctena.com/allgemeine-geschaeftsbedingungen/" target="_blank">AGB</a></li><li><a href="https://www.doctena.com/datenschutzerklaerung/" target="_blank">Datenschutz</a></li></ul></div>
            
        </div>
        
		<!--googleoff: snippet-->
        <div id="footer">
            <ul><li>Version 11.03vv</li><li class="hidden">7248</li><li class="hidden">1x1bvmpcc5esve2vktwgwm4o</li><li class="right">Ein Service von <a href="https://www.doctena.de/" target="_blank">Doctena</a></li></ul>
        </div>
        <!--googleon: snippet-->
        
    </div>

    
    
     <div id="tl_ol"></div>

</body>
</html>
