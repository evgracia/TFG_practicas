float pt_projection_in_line(PVector P, PVector line_O, PVector line_dir) {
  line_dir.normalize();
  PVector OP = PVector.sub(P, line_O);
  float angle = PVector.angleBetween(OP, line_dir);
  float P_projection = OP.mag() * cos(angle); 
  return P_projection;
}

void display_conexion(PVector A, PVector B, color c){
  fill(c);
  stroke(c);
  line(A.x, A.y, B.x, B.y);
  ellipse(B.x, B.y, 3, 3); 
}
