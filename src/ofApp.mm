#include "ofApp.h"


//--------------------------------------------------------------
void ofApp::setup(){	
    fbo.allocate(ofGetWidth(), ofGetHeight());
    fbo.begin();
        ofClear(255);
    fbo.end();
}

void ofApp::update()
{

}

//--------------------------------------------------------------
void ofApp::draw(){

    fbo.begin();
        ofDrawCircle(ofRandom(ofGetWidth()), ofRandom(ofGetHeight()), ofRandom(20));
    fbo.end();
       
    stringstream info;
    
    info.str("");
    info << "fboWidth: " << fbo.getWidth()   << endl;
    info << "fboHeight: " << fbo.getHeight()  << endl;
    info << "ofGetWidth(): " << ofGetWidth()  << endl;
    info << "ofGetHeight(): " << ofGetHeight()    << endl;
    info << "ofGetScreenWidth(): " << ofGetScreenWidth()  << endl;
    info << "ofGetScreenHeight: " << ofGetScreenHeight()    << endl;
    info << "ofGetWindowWidth: " << ofGetWindowWidth()  << endl;
    info << "ofGetWindowHeight: " << ofGetWindowHeight()    << endl;

    fbo.draw(0, 0);
    ofDrawBitmapString(info.str(), 20, 20);
    //ofLog() << info.str();

}

//--------------------------------------------------------------
void ofApp::exit(){

}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch){

}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch){
    
}

//--------------------------------------------------------------
void ofApp::lostFocus(){

}

//--------------------------------------------------------------
void ofApp::gotFocus(){

}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning(){

}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation){

}

