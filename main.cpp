#include <iostream>
float **create_theta(int row){
    float **theta=new float*[row];
    for (int i = 0; i <row ; ++i) {
        theta[i]=new float[1];
    }

    for (int j = 0; j <row ; ++j) {
        std::cout<<"Theta";
        std::cout<<j<<std::endl;
        std::cin>>theta[j][0];
    }
    return theta;
}

float sum(float **sqrErrors, float lenVek){
    float output=0;
    for (int i = 0; i < lenVek ; i++) {
        output+=sqrErrors[i][0];
    }
    //std::cout<<output<<std::endl;
    return output;
}

float sum_t2(float **sqrErrors, float lenVek, float X[][2]){
    float output=0;
    for (int i = 0; i < lenVek ; i++) {
        output+=sqrErrors[i][0]*X[i][1];
    }
    //std::cout<<output<<std::endl;
    return output;
}

float **get_prediction(float X[][2], float **theta, float lenX){
    float output=0;
    float **prediction=new float*[(int)lenX];
    int i,j;
    for ( i = 0; i <lenX ; i++) {
        prediction[i]=new float[1];
        for ( j = 0; j <2 ; j++) {

                output+=(X[i][j]*theta[j][0]);

        }
        prediction[i][0]=output;
        output=0;
    }
    //std::cout<<theta[1][0]<<std::endl;
    return prediction;
}

float **get_sqrErrors(float X[][2], float y[][1], float **theta, float lenX){
    float **sqrErrors=new float*[(int)lenX];
    float **prediction=get_prediction(X,theta,lenX);
    for (int i = 0; i <lenX ; i++) {
        sqrErrors[i]=new float[1];
        sqrErrors[i][0]=prediction[i][0]-y[i][0];
        //std::cout<<sqrErrors[i][0]<<std::endl;
    }
    return sqrErrors;
}

float **gradient_descent(float X[][2], float y[][1], float **theta, float lenX,float cont){
    float descentx=(1/lenX)*sum(get_sqrErrors(X,y,theta,lenX),lenX);
    float descenty=(1/(2*lenX))*sum_t2(get_sqrErrors(X,y,theta,lenX),lenX,X);

    while(1){
        //std::cout<<descentx<<std::endl;
        if(descentx<0.1&&descenty<0.1&&descentx>(-0.1)&&descenty>(-0.1)){

            break;
        }
        theta[0][0]=(theta[0][0]-(cont*descentx));
        theta[1][0]=(theta[1][0]-(cont*descenty));
        //std::cout<<descentx<<std::endl;
        //std::cout<<descenty<<std::endl;
        descentx=(1/lenX)*sum(get_sqrErrors(X,y,theta,lenX),lenX);
        descenty=(1/(2*lenX))*sum_t2(get_sqrErrors(X,y,theta,lenX),lenX,X);

    }
    return theta;
}
float **CostFunction(float X[][2], float y[][1], float **theta, float lenX, float cont){

     float **parameters=gradient_descent(X,y,theta,lenX,cont);

     return parameters;
}
float prediction(float** gradient_descent,float x){
    return gradient_descent[0][0]+(gradient_descent[1][0]*x);
}
int main() {
    float X[3][2]={{1,3},{2,6},{3,4}};
    float y[3][1]={{2},{3},{4}};

    float **theta=new float*[2];
    for (int i = 0; i <2 ; ++i) {
        theta[i]=new float[1];
    }
    theta[0][0]=0;
    theta[1][0]=1;
    float **parameters;
    parameters=CostFunction(X,y,theta,3,0.1);
    float output=prediction(parameters,2);
    std::cout<<output;

    return 0;
}