function photoEditorUpload(){getFlashObject("\x49\x6d\x61\x67\x65\x45\x64\x69\x74\x6f\x72").upload();};function photoEditorCancel(){getFlashObject("\x49\x6d\x61\x67\x65\x45\x64\x69\x74\x6f\x72").close();};var pe_aNx=true;function photoEditorImageUploadCompleteHandler(result,pe_bQp,pe_bRM,pe_bsw,response){pe_aNx=false;eval("\x76\x61\x72\x20\x70\x65\x5f\x65\x45\x20\x3d\x20"+response);var pe_bud="\x63\x6c\x6f\x73\x65";if(pe_bsw>1&&pe_bQp+pe_bRM!=pe_bsw)pe_bud="\x63\x6f\x6e\x74\x69\x6e\x75\x65";opener.setInsertImageFile(pe_eE.result,pe_eE.addmsg,pe_bud);pe_aNx=true;};function photoEditorSlideshowUploadCompleteHandler(result,response,flashVars){if(result=="\x73\x75\x63\x63\x65\x73\x73"){var addmsg={};addmsg.imageURL=opener.editorBaseURL+opener.NamoSE.pe_dU.pe_bxO;addmsg.imageTitle="\x73\x6c\x69\x64\x65\x73\x68\x6f\x77";addmsg.imageKind="\x70\x68\x6f\x74\x6f\x45\x64\x69\x74\x6f\x72\x53\x6c\x69\x64\x65\x73\x68\x6f\x77";addmsg.imageWidth="\x38\x30\x30";addmsg.imageHeight="\x36\x30\x30";addmsg.imageOrgPath="";addmsg.flashVars=(typeof flashVars=="\x73\x74\x72\x69\x6e\x67")?flashVars:"";addmsg.editorFrame=opener.pe_bhv;opener.setInsertImageFile(result,addmsg);}else{eval("\x76\x61\x72\x20\x70\x65\x5f\x65\x45\x20\x3d\x20"+response);opener.setInsertImageFile(pe_eE.result,pe_eE.addmsg);}return;};var pe_bmX;function closePhotoEditor(){var pe_bCx=function(){if(pe_aNx)window.close();};var pe_bEf=function(){window.clearInterval(pe_bmX);window.close();};window.setTimeout(pe_bEf,1000);pe_bmX=window.setInterval(pe_bCx,50);};function getFlashObject(pe_beR){if(navigator.appName.indexOf("\x4d\x69\x63\x72\x6f\x73\x6f\x66\x74")!= -1&&parseInt(navigator.userAgent.toLowerCase().match(/msie (\d+)/)[1],10)<9){return window[pe_beR];}else{return document[pe_beR];}}