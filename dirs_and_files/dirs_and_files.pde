import java.util.Arrays;  


void setup(){
   //use the path of this sketch for now
  String path = sketchPath(); 
  //String path = "C:\\Users\\teach\\Documents";  
  //String[] localnames = get_dirlist(path);
  //printArray(localnames);
  
  print_files(path, "");
  
  
  noLoop();
  
}


// Nothing is drawn in this program and the draw() doesn't loop because
// of the noLoop() in setup()
void draw() {
}



File[]  get_dirlist(String path){
  // Return a sorted array of all entries in path.
  // This returns just the names, not the full path to the names.
  File file = new File(path);
  File[] dirlist = file.listFiles();
  Arrays.sort(dirlist);
  return dirlist;
  
}


void print_files(String path, String prefix){
  //Print recursive listing of contents of path
  if (prefix == "" || prefix == null){ //detect outmost call, print a heading
    println("Folder listing for path: " + path);
    prefix = "| ";
  }
  File[] dirlist = get_dirlist(path);
  for (File f : dirlist){
    println(prefix + f);
    if (f.isDirectory()) {
      print_files(f.getAbsolutePath(),prefix + "| ");
  }
  }
  
  
}




//not needed
// This function returns all the files in a directory as an array of Strings  
String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}