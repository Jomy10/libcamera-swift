import libcamera

let cameraManager = libcamera.CameraManager()
let cameras = cameraManager.cameras()
let cameraSelected = 0
let cam = cameras.get(cameraSelected)

print("Using camera:", cam.properties())

