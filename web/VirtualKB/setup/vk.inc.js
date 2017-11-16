/**
 * $Id: vk.inc.js 753 2011-05-05 20:35:49Z wingedfox $
 *
 * Keyboard layout parset implementation
 *
 * This software is protected by patent No.2009611147 issued on 20.02.2009 by Russian Federal Service for Intellectual Property Patents and Trademarks.
 *
 * @author Ilya Lebedev
 * @copyright 2006-2011 Ilya Lebedev <ilya@lebedev.net>
 * @version $Rev: 753 $
 * @lastchange $Author: wingedfox $ $Date: 2011-05-06 00:35:49 +0400 (Пт., 06 мая 2011) $
 */
var VirtualKeyboardLayout=function(i){
    var I=this;
    var l="domain";
    var o="code";
    var O=[0x00AD,0x0600,0x0601,0x0602,0x0603,0x06DD,0x070F,0x17B4,0x17B5,0x200B,0x200C,0x200D,0x200E,0x200F,0x202A,0x202B,0x202C,0x202D,0x202E,0x2060,0x2061,0x2062,0x2063,0x206A,0x206B,0x206C,0x206D,0x206E,0x206F];
    var Q=['021e','021f'];
    var _={
    //    '29':[],
    //    '02':[],
    //    '03':[],
        '04':[],
        '05':[],
        '06':[],
        '07':[],
        '08':[],
        '09':[],
        '0a':[],
        '0b':[],
        '0c':[],
        '0d':[],
        '2b':[],
        '10':[],
        '11':[],
        '12':[],
        '13':[],
        '14':[],
        '15':[],
        '16':[],
        '17':[],
        '18':[],
        '19':[],
        '1a':[],
        '1b':[],
        '1e':[],
        '1f':[],
        '20':[],
        '21':[],
        '22':[],
        '23':[],
        '24':[],
        '25':[],
        '26':[],
        '27':[],
        '28':[],
        '2c':[],
        '2d':[],
        '2e':[],
        '2f':[],
        '30':[],
        '31':[],
        '32':[],
        '33':[],
        '34':[],
        '35':[]
    };
    
    var c=['normal','shift','ctrl','shift_ctrl',null,null,'alt','shift_alt','caps','shift_caps'];
    var C;
    var e;
    var v;
    var V;
    var x;
    var X=[];
    var z=[];
    var Z={};
    
    var w;
    var W="";
    var s="/addons/";
    var S="callbacks/";
    var k=function(y){
        if(y.match(/^[\da-f]{4}$/i)){
            return String.fromCharCode(parseInt(y,16));
        }else{
            return y
            }
        };
    
var K=function(y){
    return y.charCodeAt(0);
};

var q=function(y,Y){
    if(c[0]==Y){
        return Y+":["+addcslashes(y.map(function(P){
            if(!P.match(/^\[.+\]$/))return P.charCodeAt(0);else return P
                }).join(','))+"]"
        }else if(y&&in_array(Y,c)){
        var u=Y+":{";
        for(var U=0,p=y.length;U<p;U++){
            if(y[U]){
                y[U]=U+":["+addcslashes(y[U].map(function(P){
                    if(!P.match(/^\[.+\]$/))return P.charCodeAt(0);else return P
                        }).join(','))+"]"
                }
            }
        u+=y.filter().join(",")+"}";
    return y.length?u:""
    }
    return null
};

var E=function(){
    var y=[],Y=false;
    for(var u in Z){
        if(!Z.hasOwnProperty(u))continue;
        Y=true;
        var U=[],p=Z[u];
        for(var P in p){
            U.push(P);
            U.push(p[P]);
        }
        y.push(u.charCodeAt(0)+":["+U.map(function(a){
            return a.charCodeAt(0)
            }).join(',')+"]");
    }
    return Y?"dk:{"+y.join(",")+"}":""
    };
    
var r=function(y){
    var Y=k(y);
    if(y.length==1){
        y=y.charCodeAt(0).hex();
    }
    if(!Z[Y]){
        var u=w.match(new RegExp("^DEADKEY\\s+"+y+"((?:.|[\\r\\n])+?)(?:^KEYNAME|^DEADKEY)","m"));
        if(u&&u[1]){
            var U=u[1].split(/\s*[\r\n]+\s*/m),p={},P=false;
            for(var a=0,A=U.length;a<A;a++){
                var d=U[a].trim();
                if(d){
                    d=d.split(/\t+/);
                    p[k(d[0])]=k(d[1]);
                    $store=true
                    }
                }
            if($store){
            Z[Y]=p
            }
        }
}
};

var R=function(){
    if(!z.length){
        var y=w.match(/^LIGATURE(?:.|[\r\n])+?--[\r\n]+((?:.|[\r\n])+?)(?:^KEYNAME|^DEADKEY)/m);
        if(y&&y[1]){
            var Y=y[1].split(/[\r\n]+/);
            for(var u=0,U=Y.length;u<U;u++){
                var p=Y[u].match(/^([A-Z\d_]+)\t\t(\d+)\t+((?:[^\t]+\t)+)/m),P=p[1],a=p[2];
                if(X[a]){
                    if(!z[P])z[P]=[];
                    z[P][X[a]]=p[3].split(/\t/).map(function(A){
                        return String.fromCharCode(parseInt(A,16));
                    }).filter();
                }
            }
            }
    }
};

var t=function(){
    var y=w.match(/^.*?KBD\t[^\t]+\t"([^"]+)/m);
    C=y[1];
    y=w.match(/^LOCALENAME\t"(\w+)-(\w+)/m);
    if(y&&y.length){
        e=y[2];
        v=mb_strtoupper(y[1]);
    }else{
        e="US";
        v="EN"
        }
        y=w.match(/^COMPANY\t"([^"]*)/m);
    x=y[1];
    y=w.match(/^COPYRIGHT\t"([^"]+)/m);
    V=y[1];
    if(/ilya lebedev/i.test(V))V=""
        };
        
var T=function(){
    var y=w.match(/^\/\/(SC[^\r\n]+)/m);
    X=y[1].split(/\t/).slice(3);
    R();
    var Y=w.match(/^LAYOUT(?:.|[\r\n])+?--[\r\n]+((?:.|[\r\n])+?)(?:^DEADKEY|^LIGATURE|^KEYNAME)/m)[1].split(/[\r\n]+/).map(function(H){
        return H.split(/\t+/);
    });
    for(var u=0,U=Y.length;u<U;u++){
        var p='SGCap'==Y[u][2],P=1==Y[u][2],a=Y[u][0],A=Y[u][1],d=Y[u];
        if(_[a]){
            $lKey=_[a];
            for(var D=0,f=X.length;D<f;D++){
                var F=X[D],g=d[D+3].trim(),G=c[F],h;
                if('-1'==g){
                    continue
                }else if('%%'==g){
                    h=z[A][F]
                    }else if(g.match(/@$/)){
                    g=g.replace('@','');
                    h=["\x03",k(g)];
                    r(g);
                }else{
                    h=k(g);
                }
                $lKey[G]=h;
                if(P){
                    if(0==D){
                        $lKey[c[9]]=h
                        }else if(1==D){
                        $lKey[c[8]]=h
                        }
                    }
            }
            if(p){
        d=Y[u+1];
        if(d[3]&&-1==d[3].indexOf("//")){
            $lKey[c[8]]=k(d[3]);
        }
        if(d[4]&&-1==d[4].indexOf("//")){
            $lKey[c[9]]=k(d[4]);
        }
    }
    }
if(p){
    u++
}
}
};

I.getParsedLayout=function(){
    T();
    var y={
        'name':C,
        'code':e,
        'domain':v,
        'copy':V,
        'company':x,
        'keys':_,
        'dk':Z,
        'cbk':I.getCallback(),
        'addon':I.getAddon()
        };
        
    return y
    };
    
I.getAddon=function(){
    $add=W+s+e+'.js';
    if(!file_exists($add)){
        $add=''
        }
        return $add
    };
    
I.getCallback=function(){
    $add=W+s+S+i.replace(/.+[\/\\]+(.+)\.klc$/i,"$1.js");
    if(file_exists($add)){
        return $add
        }
        return''
    };
    
I.getName=function(){
    return C
    };
    
I.getCode=function(){
    return e
    };
    
I.getDomain=function(){
    return v
    };
    
I.getCopyright=function(){
    return V
    };
    
I.serialize=function(y){
    var Y=mb_strtoupper(v),u;
    switch(y){
        case"lng":
            u=Y==e?e:Y+'-'+e;
            break;
        case"domain":
            u=Y;
            break;
        default:
            return""
            }
            T();
    var U=[],p=[],P=[],a=[],A=[],d=[],D=$i_asc=$i_aac=$i_asac=$i_acc=$i_ascc=0;
    for(var f in _){
        var F=_[f],g=F['normal'],G=F['shift'],h=F['alt'],H=F['shift_alt'],j=F['caps'],J=F['shift_caps'];
        if(!g){
            g=String.fromCharCode(0x02);
        }else if(g instanceof Array){
            g="["+g.map(K).join(",")+"]"
            }
            if(G instanceof Array){
            G="["+G.map(K).join(",")+"]"
            }
            if(h instanceof Array){
            h="["+h.map(K).join(",")+"]"
            }
            if(H instanceof Array){
            H="["+H.map(K).join(",")+"]"
            }
            if(j instanceof Array){
            j="["+j.map(K).join(",")+"]"
            }
            if(J instanceof Array){
            J="["+J.map(K).join(",")+"]"
            }
            U[D++]=g;
        if(is_string(G)&&(G.match(/^\[3,/)||in_array(G,Q)||mb_strtoupper(G)!=mb_strtoupper(g))){
            if(!p[$i_asc])p[$i_asc]=[];
            p[$i_asc].push(G);
        }else{
            $i_asc=D
            }
            if(is_string(h)&&(h.match(/^\[3,/)||in_array(h,Q)||mb_strtoupper(h)!=mb_strtoupper(g))){
            if(!P[$i_aac])P[$i_aac]=[];
            P[$i_aac].push(h);
        }else{
            $i_aac=D
            }
            if(is_string(H)&&(H.match(/^\[3,/)||(in_array(H,Q)||mb_strtoupper(H)!=mb_strtoupper(h)))){
            if(!a[$i_asac])a[$i_asac]=[];
            a[$i_asac].push(H);
        }else{
            $i_asac=D
            }
            if(is_string(j)&&(in_array(j,Q)||mb_strtoupper(j)!=mb_strtoupper(g))){
            if(!A[$i_acc])A[$i_acc]=[];
            A[$i_acc].push(j);
        }else{
            $i_acc=D
            }
            if(is_string(J)&&(in_array(J,Q)||mb_strtoupper(J)!=mb_strtoupper(j))){
            if(!d[$i_ascc])d[$i_ascc]=[];
            d[$i_ascc].push(J);
        }else{
            $i_ascc=D
            }
        }
    $serArr=["code:'"+addcslashes(u)+"'","name:'"+addcslashes(C)+"'",q(U,c[0]),q(p,c[1]),q(P,c[6]),q(a,c[7]),q(A,c[8]),q(d,c[9]),E()];
$add=I.getCallback();
if($add){
    $serArr.push("cbk:"+file_get_contents($add).trim());
}
return"{"+$serArr.filter().join("\n,")+"}"
};
(function(){
    O=O.join("");
    Q=Q.map(function(y){
        return String.fromCharCode(parseInt(y,16))
        });
    W=i.replace(/\\/g,'/');
    W=W.replace(/(\/)[^\/]+\.klc$/i,'');
    w=IOsys.readString(i);
    t();
})();
};

function file_get_contents(i){
    var I=IOsys.GetFile(i);
    return I.OpenAsTextStream(1,-2).Read(I.Size())
    }
    function file_exists(i){
    return IOsys.FileExists(i);
}
function addcslashes(i){
    return i.replace(/(['\\])/g,"\$1");
}
function in_array(i,I){
    return I.indexOf(i)>-1
    }
    function is_string(i){
    return"string"==typeof i
    }
    function mb_strtoupper(i){
    if(i)return i.toUpperCase();
}
