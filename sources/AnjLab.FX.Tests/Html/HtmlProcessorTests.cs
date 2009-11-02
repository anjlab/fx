﻿using AnjLab.FX.Html;
using NUnit.Framework;

namespace AnjLab.FX.Tests.Html
{
    [TestFixture]
    public class HtmlProcessorTests
    {
        [Test]
        public void TestStripHtml()
        {
            Assert.AreEqual(" text yandex text ",
                            HtmlProcessor.StripHtml(@"<script language='javascript'>js</script><style type=""text/css"">css</style>text <a href='http://www.ya.ru'>yandex</a> text <!-- comments -->"));

            string yandex = @"<head><title>Яндекс</title><link rel=""shortcut icon"" href=""http://img.yandex.net/i/favicon.ico""><link rel=""alternate"" type=""application/rss+xml"" title=""Новости Яндекса"" href=""http://company.yandex.ru/news/news.rss""><link rel=""alternate"" type=""application/rss+xml"" title=""Блог Яндекса"" href=""http://company.yandex.ru/blog/index.rss""><link rel=""search"" href=""http://www.yandex.ru/opensearch.xml"" title=""Яндекс"" type=""application/opensearchdescription+xml""><style type=""text/css"">*{font-size:100%;margin:0}body,table,th,td,ul,ol,li{padding:0;border-collapse:collapse;list-style:none;vertical-align:top}h1,b{font-weight:400}input{vertical-align:middle}body{font:.8em Arial,sans-serif;background:#fff url(http://www.tns-counter.ru/V13a****yandex_ru/ru/CP1251/tmsec=yandex_main/0)}h2 a:link,#head .m a,#news h2 a:visited,#body h2 a:visited,#head a,#tabs a,#mail p a,#right h2 a:link,#right h2 a:visited,#foot .kbd{color:#000}a:link,#adv h2 a:link{color:#1A3DC1}a{text-decoration:underline}a:hover{color:#f00!important}img{border:0}#sample{cursor:pointer;text-decoration:none;border-bottom:1px dashed #000}i{position:absolute;width:16px;height:16px;margin-left:-19px;background:url(http://img.yandex.net/i/icons.png) no-repeat}ol li{position:relative;padding-bottom:.3em;line-height:1.2em}ol u{position:absolute;z-index:1;left:-1.4em;text-decoration:none}#head{width:100%;margin-bottom:10px;background:#e8e9ec}#head td{font:85% Verdana,sans-serif;padding:5px 10px 7px 0}#head .s{width:18%;padding-left:27px}#head .s a{float:left;color:#ee7b00}#head .s i{background-position:-255px}#head .h{width:34%}#head .h a{color:#808080}#head .m{width:1px}#head .u{text-align:right}#head .user,#head .user *{font-weight:bold;text-decoration:underline}#head .user b{color:#f00}#head .exit{color:#E03A3A}#neck{width:100%}#neck th{width:18%}#neck .news td{vertical-align:bottom}#news{width:50%}#news h2,#news ul,#news ul li,#news ul a,#news .p{float:left}#news h2{padding-bottom:5px}#news ul{padding-left:1em}#news ul li{margin:0 .5em 0 -.5em;padding:0 .5em 4px}#news.all li.all,#news.reg li.reg{background:#fff68d url(http://img.yandex.net/i/arr-news-chooser.gif) no-repeat 50% 100%}#js #news ul a{text-decoration:none;color:#000;border-bottom:1px dashed #000}#js #news ul a:hover{border-bottom-color:#f00}#news.all div.reg,#news.reg div.all{display:none}#js #news.all li.all a,#js #news.reg li.reg a{cursor:default;color:#ee7b00!important;border:0}#news .p{margin-left:12px;padding-left:1.5em;color:#FF5223}#news .p i{background-position:0}#news ol{clear:left;margin-right:15px}#news .hot u,#news .hot strong span{text-decoration:none;color:#ee7b00}#news .hot strong,#news .hot b{font-weight:normal;position:absolute;top:0;right:100%;margin-right:.2em;padding:0 2.55em .15em .5em;background:#fff68d url(http://img.yandex.net/i/arr.png) no-repeat 100% 50%;text-decoration:underline;color:#fff68d}#news .hot b{z-index:2;left:-3.2em;height:1.2em;background:none}#adv{width:32%}#adv table{width:80%;margin-bottom:.2em}#neck #adv td{vertical-align:middle}#adv img{margin-right:7px}#adv .c{width:100%}#adv h2{font:140% Arial,sans-serif;margin:0 0 .25em 0}#adv div{font-size:0;width:160px}h1 img{font:3.9em serif;margin-top:2px}#form{margin:12px 9% 12px 0;background:#fc0}#form .arr{padding:6px 26px 6px 8px;background:url(http://img.yandex.net/i/arr.png) no-repeat 100% 50%}[id]#form table{width:100%}#form th{width:100%;height:33px;padding-right:5px}#form th input{width:100%}#form .tune{padding-right:5px;line-height:18px}#form .ua{position:relative;margin:-9px 0 3px}#form .l{float:left;padding-right:1em}#form .r{float:right}#form .r a:link{color:#666}[id]#tabs{width:100%}#tabs th,#tabs td{width:auto;height:auto;padding:5px 8px 6px}#tabs td{background:#fff}#tabs .all{width:100%;padding-left:1.5em}#tabs .all a{color:#1a3dc1}
#body{position:relative;width:100%;margin-top:-4px}#body .l,#body .r{float:left}#body:lang(ru) .l,#left:lang(ru) .r{overflow:hidden}#body .l{margin-right:5%}#body span{white-space:nowrap}em,#catalog strong a{font:100% Arial,sans-serif}#right h2{margin:1.2em 0 .1em}.info a:link,#adresa a:link,#rates a:link{color:#37496d}#banner{margin:6px 0 11px}#banner div{margin-bottom:-19px}#foot{font-size:85%;clear:left;margin:1.7em 0 0 0;padding-top:10px;border-top:1px solid #C5C8D0}#foot li{position:absolute;overflow:hidden;padding:0 0 1.6em}#foot .mob:link{color:#393}#foot .d{left:2%;width:31%}#foot .d img{float:left;margin:-1.05em 1.1em 0 0}#foot .d div{margin-left:90px;padding-left:1.1em}#foot .i{left:35%;width:15%}#foot .i div{margin:.15em 0 1em}#foot .s{left:52%;width:26%}#foot .c{left:80%;overflow:visible;width:18%}#foot i{background-position:-16px}#foot .c div{margin:.15em 0}
#region{float:left;width:100%}h2#area{font:140% Arial,sans-serif;clear:left;margin:0}#weather{margin:.3em 0 .1em}#weather *{display:inline}#weather dl{margin-left:.5em}#weather img,#weather b{position:relative;top:8px}#weather b{font-size:140%;vertical-align:top}#weather dd{margin-right:.6em}.l #weather h2{display:block;margin:.4em 0 .55em}.l #weather dl{margin:0}.info{overflow:hidden}#right .info h2 em a{color:#393}.info ul{color:#666}#right .info li{margin-top:.4em}.info li a,.info li span{margin-right:.3em;white-space:normal}.info i{margin-left:-16px;background-image:url(http://img.yandex.net/i/i-tick.gif)}#tv ul{padding-left:3em}#tv ul em{position:absolute;margin-left:-3em}#tv dt{margin:.6em 0 -.3em}#traffic h2{margin:.9em 0 .55em}#traffic i{width:21px;height:18px;margin:.3em 0 0 2px}#traffic.rd i{background-position:-192px}#traffic.yw i{background-position:-213px}#traffic.gn i{background-position:-234px}#traffic b{font-size:140%;position:relative;left:28px}#traffic.rd em a{color:#ea0503}#traffic.yw em a{color:#c90}#traffic.gn em a{color:#067e06}#adresa{color:#666}#adresa div{margin-top:.3em}#rates{float:left;clear:left}#rates .r{clear:none}#rates h2{margin:1.5em 0 .3em}#rates th,#rates td{font-weight:400;width:auto;padding:0 .4em .2em 0;text-align:left}#rates td{text-align:right;color:#666}#rates strong{color:#000}#rates a{white-space:nowrap}#left{float:left;clear:left;width:44%;margin:.35em 1% 0 0}.wide #left{width:56.5%}#left .l{width:45%;margin-right:0}#left .r{width:50%;margin-bottom:1.5em}#right{float:left;width:52%}.wide #right{width:39%}#right .l{width:50%}#right .r{width:45%}#mail,#fotki{width:178px;margin:0 auto 1.5em;padding:0 20px}[id^=mail]#mail,[id^=fotki]#fotki{width:138px}#mail{margin-top:6px}#mail form{padding-top:.85em;background:#d4dff3 url(http://img.yandex.net/i/icons.png) no-repeat -272px 0}#mail .f,#mail p{font:85% Verdana,sans-serif;background:#d4dff3}#mail.form .f{padding:0 1em}#mail .f div{margin:.5em 0}#mail .i{position:relative;height:3.2em}#js #mail .i{height:2.1em}#mail .i label,#mail .i input{position:absolute;left:0;width:116px;padding:.2em 0}#mail .i input{font:100% Verdana,sans-serif;margin-top:1.6em;padding:.1em 0;text-align:center}#js #mail .i input{margin:0}#js #mail .i label{z-index:2;cursor:text;color:#999}#js #mail .t{margin-top:-.3em}#mail.form .f a:link{color:#666}#mail ul{padding:.1em .5em 1em}#mail li{margin:.6em 0 0 19px;text-align:left;line-height:1.2em}#mail ul a:link{color:#1f3250}#mail .user{font:120%/1.15em Arial,sans-serif;margin-left:0}#mail .user b{height:1%;margin-left:-.3em}#mail .none{color:#8396b6}#mail .mail i{background-position:-32px}#mail .count{margin-top:.3em}#mail .none i{background-position:-48px}#mail .post i{background-position:-64px}#mail p{margin:1em 0 0;padding:.3em 0 .55em;background:#fff}#fotki h2{position:relative;left:9px;display:table;margin:0 auto}#fotki i{background-position:-80px}#fotki table,#fotki div{margin:.3em auto 0;background:url(http://img.yandex.net/i/bg-fotki.png)}#fotki div{display:inline;float:left;margin:0 0 -1px 5px;padding-top:9px;background-position:100% 0}#fotki div div{margin:0;padding:0 5px 0 0;background-position:100% 100%}#fotki div div div{position:relative;left:-5px;padding:0;background-position:0 100%}#fotki div a{position:relative;top:-6px;left:5px;display:block}#fotki .k{font-weight:400}#fotki img{border:6px solid #fff}.list{position:relative;left:-1.4em}.list h2,.list ul,.list ol{padding-left:1.4em}#catalog{margin:0 0 1.5em}#catalog h2,#catalog li{margin:0 1em .4em 0}#catalog b{height:1%;margin-left:-.3em}#catalog div a{font-size:85%;color:#393}#catalog div i{background:url(http://img.yandex.net/i/i-tick.gif) no-repeat 100% 0}#blogs h2,#blogs ol{margin-bottom:.4em}#services div{margin:0 0 .7em 21px;color:#666}#services i{margin-left:-21px}#market i{background-position:-96px}#moikrug i{background-position:-144px}#games i{background-position:-112px}#cards i{background-position:-128px}#narod i{background-position:-160px}#money i{background-position:-176px}#direct{margin-top:3.2em!important}#direct i{background-position:-411px}#partners i{background-position:-427px}
.no-bar #bar{display:none}#bar{font-size:.89em;margin:0 0 1px;line-height:1.5em;white-space:nowrap;background:#c8e4f4 no-repeat}#bar div{min-height:18px;padding-left:60px}#bar.ie6{background:#ffb700 url(http://img.yandex.net/i/bar-ie6-bg.gif) repeat-x}#bar.ff div{background:url(http://img.yandex.net/i/bar-ff.png) no-repeat}#bar.ie6 div{padding-left:90px;background:url(http://img.yandex.net/i/bar-ie6.png) no-repeat}#bar.ie div{background:url(http://img.yandex.net/i/bar-ie.png) no-repeat}#bar a{margin:0 .7em;cursor:pointer}#bar.ie6 a{color:#fff}#bar .x{float:right;margin:0 10px;padding-left:10px;color:#666;background:url(http://img.yandex.net/i/bar-x.gif) no-repeat 0 65%}#bar.ie6 .x{color:#fff82e;background-image:url(http://img.yandex.net/i/bar-ie6-x.gif)}
</style><!--[if IE]><style>body{font-size:80%}a i,#news .hot a,#sample{cursor:hand}ol u{top:.1em}#head .s a{float:none}#news .hot b{backgr\ound:red;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0)}#news ul li{display:inline}#news .hot strong,#news .hot b{padding-bottom:.2em}#adv img{display:block}#form div{height:1%}
#body .l,#left .r{position:relative;overflow:hidden}#body .r,#right{clear:right}#region,#mail form,#mail.mail p,#foot{float:none;height:1%}#js #mail .t{margin-top:-.7em}#mail .user{margin-left:1px}#catalog i{margin-top:1px}#bar div{height:18px}#bar a{cursor:hand}   </style><![endif]--><script type=""text/javascript"">g_sid=207731200829025087149;if(self.parent.frames.length!=0){self.parent.location=document.location}function p(p){new Image().src=location.protocol+'//clck.yandex.ru/click/dtype=clck/lid='+p+'/sid='+g_sid+'/*'}var g_tabs;function tabs(shadowTabs,p,c1,c2){if(!g_tabs&&document.getElementById&&(typeof(encodeURIComponent)=='function')){g_tabs=document.getElementById(""tabs"");if(g_tabs){var input=document.forms[0].getElementsByTagName(""input"")[0];g_tabs=g_tabs.getElementsByTagName(""a"");var t=input.value.replace(/^\s+|\s+$/g,"");if(t!=''&&(shadowTabs!=0)){var img=new Image();img.onload=function(){for(var i=1,p=1;i<7;p*=2,i++){if(!(img.height&p)){g_tabs[i].style.color=""#999""}}};img.src=""http://www.yandex.ru/yandsearch?rpt=tabsonly&img=1&text=""+encodeURIComponent(t)}setInterval(function(){var t=input.value.replace(/^\s+|\s+$/g,"");for(var i=0,l=g_tabs.length-1;i<l;i++){var url="";var a=g_tabs[i];var counter=c1;if(t!=""){var h=a.host.split(""."")[0];if(h==""www""){url=""yandsearch?text=""}else if(h==""market""){url=""search.xml?clid=505&cvredirect=1&text="";}else if(h==""news""){url=""yandsearch?rpt=nnews&grhow=clutop&text=""}else if(h==""images""){url=""yandsearch?stype=image&text=""}else if(h==""blogs""){url=""search.xml?how=tm&rd=2&text=""}else if(h==""maps""){url=""?text=""}else{url=""search.xml?text=""}url+=encodeURIComponent(t);counter=c2}else if(h==""market""){url=""?clid=505&cvredirect=1&text=""}var tmp=a.protocol+'//'+a.host+'/'+url;if(a.href!=tmp){a.href=tmp}if(counter&&!a.onclick){a.onclick=function(){return r(this,'stred/pid='+p+'/cid='+counter)}}}},200)}}}function sample(a,name){name=name||""text"";var f=document.forms[0];if(!f.nl){var z=document.createElement(""input"");z.name=""nl"";z.type=""hidden"";z.value=1;a.appendChild(z)}f[name].value=a.innerText?a.innerText:a.firstChild.nodeValue;f[name].focus()}function clean(a){var p=a.previousSibling;if(p){a.onblur=function(){if(!a.value){p.style.top=""}};p.style.top=""-9999px""}}if(document.documentElement){document.documentElement.id=""js""}function $(i){return document.all?document.all[i]:document.getElementById(i)}function init(){if(!document.all){onunload=init};setTimeout(function(){document.forms[0].text.focus()},1);tabs(0)}function setHome(a,url){a.style.behavior='url(#default#homepage)';a.setHomePage(url||'http://www.yandex.ru');return false}function cleanLogin(){$('t').checked=0;var l=$('l');var p=$('s');var f=function(){if(l.value)clean(l);if(p.value)clean(p)};setInterval(f,100)}function rate(a,href){window.open(href||a.href,'popup','width=560,height=420,status=yes,menubar=no,resizable=yes,scrollbars=1').focus();return false}function news(a){a.blur();init();$(""news"").className=a.parentNode.className;return false}
</script></head>";

            Assert.AreEqual(" Яндекс ", HtmlProcessor.StripHtml(yandex));

        }

        [Test]
        public void TestGetTagContent()
        {
            Assert.AreEqual("yandex'\"",
                            HtmlProcessor.GetTagContent("text <a href='http://www.ya.ru'>yandex'\"</a> text", "a"));

            Assert.AreEqual("yandexgoogle",
                            HtmlProcessor.GetTagContent("text <a href='http://www.ya.ru'>yandex</a> text <a href='http://www.google.ru'>google</a>", "a"));
        }

        [Test]
        public void TestGetTextOutsideTag()
        {
            Assert.AreEqual("text1text2",
                            HtmlProcessor.GetOutsideTagContent("text1 <a href='http://www.ya.ru'>yandex</a> text2", "a"));

            Assert.AreEqual("text1text2text3",
                            HtmlProcessor.GetOutsideTagContent("text1 <a href='http://www.ya.ru'>yandex</a> text2 <a href='http://www.google.ru'>google</a> text3", "a"));
        }

        [Test]
        public void TestGetTagAttributeValues()
        {
            Assert.AreEqual(@"http://www.ya.ru",
                          HtmlProcessor.GetTagAttributeValues("text <a href='http://www.ya.ru'>yandex</a> text", "a", "href")[0]);

            Assert.AreEqual(@"http://www.ya.ru",
                          HtmlProcessor.GetTagAttributeValues(@"text <a href  = ""http://www.ya.ru' /> text", "a", "href")[0]);

            string html = @"text <a href='http://www.ya1.ru'>yandex</a> text <a href  = 'http://www.ya2.ru' /> text";
            Assert.AreEqual(@"http://www.ya1.ru", HtmlProcessor.GetTagAttributeValues(html, "a", "href")[0]);
            Assert.AreEqual(@"http://www.ya2.ru", HtmlProcessor.GetTagAttributeValues(html, "a", "href")[1]);
        }
    }
}