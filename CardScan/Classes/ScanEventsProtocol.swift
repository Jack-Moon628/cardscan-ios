//
// This protocol provides extensibility for inspecting scanning results as they
// happen. As the model detects a cc number it will invoke `onNumberRecognized`
// and when it's done it notifies via `onScanComplete`.
//
// Both of these methods will always be invoked on the machineLearningQueue
// serial dispatch queue.
//
public protocol ScanEvents {
    mutating func onNumberRecognized(number: String, expiry: Expiry?, numberBoundingBox: CGRect, expiryBoundingBox: CGRect?, croppedCardSize: CGSize, squareCardImage: CGImage, fullCardImage: CGImage)
    mutating func onScanComplete(scanStats: ScanStats)
    mutating func onFrameDetected(number: String?, expiry: Expiry?, numberBoundingBox: CGRect, expiryBoundingBox: CGRect?, croppedCardSize: CGSize, squareCardImage: CGImage, fullCardImage: CGImage)
}
