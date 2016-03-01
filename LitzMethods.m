(* ::Package:: *)

(* ::Input:: *)
(*(*2D Litz method for Variation Problem*)*)
(*(*J[u(x,y)]=\iint_D (u_x^2+u_y^2-2u)dxdy*)*)
(*u[x_,y_]:=(c1+c2 (x^2+y^2))(x^2-a^2)(y^2-b^2)*)
(*J=Integrate[D[u[x,y],x]^2+D[u[x,y],y]^2-2u[x,y],{x,-a,a},{y,-b,b}]*)
(*Solve[{D[J,c1]==0,D[J,c2]==0},{c1,c2}]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*1D Litz method for Variation Problem*)*)
(*(*J[y]=\int^1_0 (x^3y''^2+100xy^2-20xy)dx,y[1]=0,y'[1]=0*)*)
(*y[x_]:=(1-x)^2(a0+a1 x)*)
(*J=Integrate[x^3y''[x]^2+100x y[x]^2-20x y[x],{x,0,1}]*)
(*NSolve[{D[J,a0]==0,D[J,a1]==0},{a0,a1}]*)


(* ::Input:: *)
(*(*Litz method for Variation Problem with ground truth*)*)
(*(*J[y]=\int^2_0(y'^2+y^2+2xy)dx,y[0]=0,y[2]=0*)*)
(*Needs["VariationalMethods`"];*)
(*y[x_]:=x *(2-x)(a0+a1 x)*)
(*J=Integrate[y'[x]^2+y[x]^2+2x y[x],{x,0,2}]*)
(*Solve[{D[J,a0]==0,D[J,a1]==0},{a0,a1}]*)
(*Clear[y];*)
(*F[x_]:=z'[x]^2+z[x]^2+2x z[x];*)
(*DSolve[{VariationalD[F[x],z[x],x]==0,z[2]==0,z[0]==0},z[x],x]*)
(**)


(* ::Input:: *)
(*(*Litz method for partial Deveriation Equation*)*)
(*(*y''-y=x,y[0]=y[1]=0*)*)
(*y[x_]:=x(1-x)(a0+a1 x);*)
(*T[x_]:=y''[x]-y[x];*)
(*f[x_]:=x;*)
(*J=Integrate[T[x] y[x]-2 f[x] y[x],{x,0,1}];*)
(*Solve[{D[J,a0]==0,D[J,a1]==0},{a0,a1}]*)
