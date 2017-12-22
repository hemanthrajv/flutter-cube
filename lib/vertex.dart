import 'dart:math';

class vertex {
  vertex(this.x,this.y,this.z);
  double x;
  double y;
  double z;

  double deg2rad(double angle) => (angle *(PI/180));

  @override
  String toString(){
    return x.toString()+" "+y.toString()+" "+z.toString();
  }

  vertex rotateY(double angle){
    final double _x = (x * cos(deg2rad(angle))) - (z * sin(deg2rad(angle)));
    final double _z = (x * sin(deg2rad(angle))) + (z * cos(deg2rad(angle)));
    return new vertex(_x, y, _z);
  }

  vertex rotateX(double angle){
    final double _y = (y * cos(deg2rad(angle))) - (z * sin(deg2rad(angle)));
    final double _z = (y * sin(deg2rad(angle))) + (z * cos(deg2rad(angle)));
    return new vertex(x, _y, _z);
  }

  vertex rotateZ(double angle){
    final double _x = (x * cos(deg2rad(angle))) - (y * sin(deg2rad(angle)));
    final double _y = (x * sin(deg2rad(angle))) + (y * cos(deg2rad(angle)));
    return new vertex(_x, _y, z);
  }

  vertex convert2D(double fov, double distance){
    final double f = fov/(z+distance);
    x = x * f;
    y = y * f;
    return new vertex(x, y, z);
  }

}