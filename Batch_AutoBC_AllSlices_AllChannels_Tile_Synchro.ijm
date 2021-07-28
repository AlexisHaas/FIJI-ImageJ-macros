dir=getDirectory("Choose a Directory");
list = getFileList(dir);
   for (i=0; i<list.length; i++) {
        path = dir+list[i];
        processFile(path);
   }
   function processFile(path) {
  	 if (endsWith(path, ".tif")) {
         open(path);
       }
     }
  for (j=0; j<nImages; j++) {
         selectImage(j+1);
        for (s=1; s<=nSlices; s++){
   			 setSlice(s);
			run("Enhance Contrast", "saturated=0.35");
       				 }
 			 } 
       

  run("Tile");
  run("Synchronize Windows");