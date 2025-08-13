//
//  ImagePicker.swift
//  Capstone Group 3
//
//  Created by Scholar on 8/12/25.
//

import Foundation
import UIKit
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = context.coordinator //object that can recieve ui picker events
        
        return imagePicker
        
    }//end of func make
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }//end of func update
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
}//end of UIView

class Coordinator: NSObject,UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //Run code when the user has selected an image
        print ("Image Selected")
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //Run Code when the user has cancelled the image
        print ("Cancelled")
    }
}


