//
//  CameraViewController.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit
import AVFoundation

class CameraViewController: UIViewController, AVCaptureMetadataOutputObjectsDelegate {
    
    var captureSession: AVCaptureSession?
    var videoPreviewLayer: AVCaptureVideoPreviewLayer?
    var qrCodeFrameView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let captureDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
        
        do {
            let input = try AVCaptureDeviceInput(device: captureDevice)
            captureSession = AVCaptureSession()
            captureSession?.addInput(input)
        } catch {
            print(error)
            return
        }
        let captureMetaDataOutput = AVCaptureMetadataOutput()
        captureSession?.addOutput(captureMetaDataOutput)
        captureMetaDataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
        captureMetaDataOutput.metadataObjectTypes = [AVMetadataObjectTypeQRCode]
        videoPreviewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        videoPreviewLayer?.videoGravity = AVLayerVideoGravityResizeAspectFill
        videoPreviewLayer?.frame = view.layer.bounds
        view.layer.addSublayer(videoPreviewLayer!)
        
        captureSession?.startRunning()
        
        qrCodeFrameView = UIView()
        
        if let newFrame = qrCodeFrameView {
            newFrame.layer.borderColor = UIColor.green.cgColor
            newFrame.layer.borderWidth = 2
            view.addSubview(newFrame)
            view.bringSubview(toFront: newFrame)
        }
        
    }

}
