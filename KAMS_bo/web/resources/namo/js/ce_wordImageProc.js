var pe_bGP={pe_bGl:function(pe_MU,t){function toDataURL(url,callback){var xhr=new XMLHttpRequest();xhr.onload=function(){var pe_xN=new FileReader();pe_xN.onloadend=function(){callback(pe_xN.result);};pe_xN.readAsDataURL(xhr.response);};xhr.onerror=function(){callback(url);};if(url){xhr.open('\x47\x45\x54',url);xhr.responseType='\x62\x6c\x6f\x62';xhr.send();}else{callback(null);}};var pe_bbt=[];var imgs=t.getDocument().getElementsByTagName("\x69\x6d\x67");for(var i=0;imgs.length>i;i++){var pe_bTO=new Promise(function(resolve,reject){toDataURL(imgs[i].src,function(pe_bQN){resolve(pe_bQN);});});pe_bbt.push(pe_bTO);}var pe_aqP=t.GetValue("\x77\x6f\x72\x64");Promise.all(pe_bbt).then(function(values){var i=0;pe_aqP=pe_aqP.replace(t.pe_ef.pe_gp,function(str,tagName,rest,pe_gt){if(tagName.toLowerCase()=="\x69\x6d\x67"){var pe_hf=[];rest.replace(t.pe_ef.attr,function(match,name){name=name.toLowerCase();if(name!="\x73\x72\x63"){pe_hf.push(match);}else{if(values[i]){pe_hf.push('\x73\x72\x63\x3d\x22'+values[i]+'\x22');}}});i++;return "\x3c"+tagName+"\x20"+pe_hf.join("\x20")+(pe_gt?"\x2f\x3e":"\x3e");}else{return str;}});pe_MU(pe_aqP);}).catch(function(values){pe_MU(pe_aqP);});}};