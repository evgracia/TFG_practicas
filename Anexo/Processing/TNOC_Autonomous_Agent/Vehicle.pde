class Vehicle {
  float time = 1;
  float max_speed = 3;
  float max_steer_force = 20;
  float mass = 1;
  float arrived_to_target = 100;

  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector direction;
  
  int current;


  Vehicle(float x, float y) {
    this.location = new PVector(x, y);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
    this.direction = new PVector(0, 1);
    this.current = 0;
  }


  void apply_force(PVector force) {
    acceleration.add(force);
  }


  void seek(PVector target) {
    PVector desired = PVector.sub(target, location);
    float d = desired.mag();
    desired.normalize();
    if ( d < arrived_to_target) {
      //Cuando está cerca, empieza a frenar
      float m = map(d, 0, arrived_to_target, 0, max_speed);
      desired.mult(m);
    } else {
      desired.normalize();
      //Queremos que llegue lo antes posible
      desired.mult(max_speed);
    }

    // Reynolds’s formula for steering force
    PVector steer = PVector.sub(desired, velocity);
    steer.limit(max_steer_force);
    apply_force(steer);
  }


  boolean seek_simple_path(PVector A, PVector B, Boolean arrived, Boolean display) { 
    //Dado que estamos en un espacio afin voy a diferenciar los
    // vectores locales (l) de los globales (g);

    PVector l_dir_path = PVector.sub(B, A);
    float path_len = l_dir_path.mag();
    l_dir_path.normalize();

    float loc_proj = pt_projection_in_line(location, A, l_dir_path);
    if (loc_proj <= -arrived_to_target) {
      seek(A);
    } else if (!arrived && loc_proj > path_len - arrived_to_target) {
      seek(B);
    } else {
      int future = 25;  
      PVector g_fut = PVector.add(location, PVector.mult(direction, future));
      float fut_loc_proj = pt_projection_in_line(g_fut, A, l_dir_path);
      PVector g_pre_target = PVector.add(A,PVector.mult(l_dir_path, fut_loc_proj));
      PVector g_target = PVector.add(g_pre_target, PVector.mult(l_dir_path, future));
      seek(g_target);
      
      if (display){
        display_conexion(location, g_fut, red);
        display_conexion(g_fut, g_pre_target, red);
        display_conexion(g_pre_target, g_target, red);
      }
    }
    if (PVector.sub(B, location).mag() <= arrived_to_target) {
      arrived = true;
    }
    
    return arrived;
  }
  
  void seek_complex_path(PVector[] path_vertex) { 
    int num_vertex = path_vertex.length;
    boolean arrived = seek_simple_path(path_vertex[current], path_vertex[current+1], false, false);  
    if (arrived) {
      arrived = false;
      if (current < num_vertex - 2) {
        current += 1; 
      }
      else {
        current = 0;
      }
    }
  }

  void update() {
    acceleration.mult(1/mass);
    PVector v_aux = PVector.mult(velocity, time);
    PVector a_aux = PVector.mult(acceleration, 0.5*time*time);
    location.add(PVector.add(v_aux, a_aux));
    velocity.add(PVector.mult(acceleration, time));  
    velocity.limit(max_speed);
    if (velocity.mag() != 0) {
      direction = PVector.mult(velocity, 1 / velocity.mag());
    }
    acceleration.mult(0);
  }  


  void in_canvas() {
    if (location.x > width/2 + 5) {
      PVector aux_x = new PVector(width+10, 0);
      location.sub(aux_x);
    }
    if (location.y > height/2 + 5) {
      PVector aux_y = new PVector(0, height+10);
      location.sub(aux_y);
    }
  }


  void display_target(PVector target, color c) {
    fill(c);
    ellipse(target.x, target.y, 5, 5);
  }

  void display_path(PVector A, PVector B, color c) {
    fill(c);
    ellipse(A.x, A.y, 5, 5);
    ellipse(B.x, B.y, 5, 5);
    line(A.x, A.y, B.x, B.y);
  }


  void display_arrow(float side, color c) {
    noFill();
    stroke(c);

    float half_angle = PI / 8;
    PVector center_point = PVector.sub(location, PVector.mult(direction, side* 2 /3));
    PVector upper_point = PVector.sub(location, PVector.mult(direction.rotate(half_angle), side));
    PVector lower_point = PVector.sub(location, PVector.mult(direction.rotate(-2 * half_angle), side));
    direction.rotate(half_angle);

    beginShape();
    vertex(location.x, location.y);
    vertex(upper_point.x, upper_point.y);
    vertex(center_point.x, center_point.y);
    vertex(lower_point.x, lower_point.y); 
    vertex(location.x, location.y);
    endShape();
  }
}
