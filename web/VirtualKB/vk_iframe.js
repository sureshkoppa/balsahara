/**
 *  $Id: vk_iframe.js 774 2011-06-02 19:57:32Z wingedfox $
 *
 *  Keyboard Iframe mode loader
 *
 *  This software is protected by patent No.2009611147 issued on 20.02.2009 by Russian Federal Service for Intellectual Property Patents and Trademarks.
 *
 *  @author Ilya Lebedev
 *  @copyright 2006-2011 Ilya Lebedev <ilya@lebedev.net>
 *  @version $Rev: 774 $
 *  @lastchange $Author: wingedfox $ $Date: 2011-06-02 23:57:32 +0400 (Чт., 02 июня 2011) $
 *  @class IFrameVirtualKeyboard
 *  @constructor
 */

<!-- ALWAYS ON TOP FLOATING LAYER POP-UP -->

<script language="JavaScript" type="text/javascript">
<!-- Copyright 2003, Sandeep Gangadharan -->
<!-- For more free scripts go to http://sivamdesign.com/scripts/ -->
<!--
var y1 = 20;   // change the # on the left to adjuct the Y co-ordinate
(document.getElementById) ? dom = true : dom = false;

function hideIt() {
  if (dom) {document.getElementById("layer1").style.visibility='hidden';}
}

function showIt() {
  if (dom) {document.getElementById("layer1").style.visibility='visible';}
}

function placeIt() {
  if (dom && !document.all) {document.getElementById("layer1").style.top = window.pageYOffset + (window.innerHeight - (window.innerHeight-y1)) + "px";}
  if (document.all) {document.all["layer1"].style.top = document.documentElement.scrollTop + (document.documentElement.clientHeight - (document.documentElement.clientHeight-y1)) + "px";}
  window.setTimeout("placeIt()", 10); }
// -->
</script>

IFrameVirtualKeyboard=new function(){
    var i=this;
    var I=null;
    var l=null;
    var o=(function(Q){
        var _=document.getElementsByTagName('html')[0].innerHTML,c=new RegExp('<scr'+'ipt[^>]+?src\\s*=\\s*["\']?([^>]+?/|)'+Q+'([^"\'\\s]*)[^>]*>(.|[\r\n])*?</scr'+'ipt>','i'),C=_.match(c);
        if(C){
            if(C[1].match(/^((https?|file)\:\/{2,}|\w:[\\])/))return[C[1],C[2]];
            if(C[1].indexOf("/")==0)return[C[1],C[2]];
            var e=document.getElementsByTagName('base');
            if(e[0]&&e[0].href)return[e[0].href+C[1],C[2]];
            return[(document.location.href.match(/(.*[\/\\])/)[0]+C[1]).replace(/^\/+/,""),C[2]]
            }
            return[null,null]
        })('vk_iframe.js');
    i.isOpen=function(){
        return null!=I&&!I.closed
        };
        
    var O=null;
    i.attachInput=function(Q){
        if(I&&I.VirtualKeyboard)return I.VirtualKeyboard.attachInput(Q);
        return false
        };
        
    i.open=i.show=function(Q,_){
        var c=false;
        if('string'==typeof _)_=document.getElementById(_);
        if('string'==typeof Q)Q=document.getElementById(Q);
        if(Q)O=Q;
        if(!O)return false;
        if(!I){
            if(_){
                var C=document.createElement('div');
                C.innerHTML=
                    
                    
                    
                    "<iframe  frameborder=\"0\" src=\""+o[0]+"vk_iframe.html"+o[1]+"\"></iframe>";
                l=C.firstChild;
                c=true
                }
            }else if(!i.isOpen()){
        l.style.display='block';
        if(I.VirtualKeyboard){
            I.VirtualKeyboard.show(O,I.document.body);
        }
        l.style.height=I.document.body.firstChild.offsetHeight+150+30+'px';//addedbyme+30
        l.style.width=I.document.body.firstChild.offsetWidth+300+52+'px';//addedbyme+52
        c=true
        }
        if(_&&l&&_!=l.parentNode){
        _.appendChild(l);
    }
    return c
    };
    
i.close=i.hide=function(Q){
    if(i.isOpen()){
        l.style.display='none';
        if(I.VirtualKeyboard){
            I.VirtualKeyboard.close();
        }
    }
};

i.isOpen=function(){
    return l&&'block'==l.style.display
    };
    
i.toggle=function(Q,_){
    i.isOpen()?i.close():i.open(Q,_);
};

i.onload=function(){
    I=(l.contentWindow||l.contentDocument.window);
    this.close();
    I.document.body.className=I.document.body.parentNode.className='VirtualKeyboardPopup';
    while(I.document.body.firstChild){
        I.document.body.removeChild(I.document.body.firstChild);
    }
    this.show();
}
};
