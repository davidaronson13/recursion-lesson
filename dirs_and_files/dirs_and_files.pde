/*

Challenge 1: Add recursion the to existing code so you print every
file and directory in a specified path.
Like  this:
Folder listing for path: C:\Users\teach\Documents\GitHub\recursion-lesson
| circleRecursion
| | circleRecursion.pde
| circleRecursion_ans
| | circleRecursion_ans.pde
| dirs_and_files
| | dirs_and_files.pde
| LICENSE
| README.md
| simpleKoch
| | simpleKoch.pde
| simpleKoch_ans
| | simpleKoch_ans.pde

Challenge 2: Write your own function to recursviely search a path in your file system for a specified file name. 
Print the file name and the path, for all instances of the file

If you complete the challenges make a pull request at https://github.com/davidaronson13/recursion-lesson

*/

import java.util.Arrays;  


void setup(){
   //use the path of this sketch for now
 //String path = sketchPath(); 
  //String path = "C:\\Users\\teach\\Documents";  
  String path = "C:\\Users\\teach\\Documents\\GitHub\\recursion-lesson";
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
    println(prefix + f.getName()); // The base case is printing out the file name
    if (f.isDirectory()) {
      print_files(f.getAbsolutePath(),prefix + "| ");
  }
  }
  
  
}
