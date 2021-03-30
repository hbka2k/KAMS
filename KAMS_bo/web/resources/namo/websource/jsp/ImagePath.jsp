<%

/*String namoFileKind = request.getParameter("namofilekind");

//filelink
String namoFilePhysicalPath = "D:\\cejava\\htdocs\\ce3\\namofile";
String namoFileUPath = "/ce3/namofile";

//movie
String namoFlashPhysicalPath = "D:\\cejava\\htdocs\\ce3\\namomovie";
String namoFlashUPath = "/ce3/namomovie";

//image
String namoImagePhysicalPath = "D:\\cejava\\htdocs\\ce3\\namoimage";
String namoImageUPath = "/ce3/namoimage";

System.out.println("namoFileKind: "+ namoFileKind);

if(namoFileKind != null && "file".equals(namoFileKind)){
	imagePhysicalPath = namoFilePhysicalPath;
	imageUPath = namoFileUPath;
}else if(namoFileKind != null && "flash".equals(namoFileKind)){
	imagePhysicalPath = namoFlashPhysicalPath;
	imageUPath = namoFlashUPath;
}else{
	imagePhysicalPath = namoImagePhysicalPath;
	imageUPath = namoImageUPath;
}*/

if(imageUPath.equals("/upfile/editor")) { //ImageSavePath로 설정한 저장경로
    imagePhysicalPath = "F:\\_project_source\\KAMS\\upfile\\editor"; //실제 물리적인 경로
    imageUPath = "/upfile/editor"; //이미지 서버 도메인이 다른 경우 설정하여 사용 가능, 실제 URL로 접근이 가능해야 함.
}
%>
