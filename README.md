# Hybrid-Intrusion-Detection-System
A Hybrid IDS which has a two layer protection scheme the first layer is Rule Based detection and the second layer contains a Supervised Learning model based on support vector machine classifier.

The Rule Based detection scheme uses a database of malicious signatures for checking known attacks. Signature  can be an IP Header, Packet with an illegal TCP flag combination, Anonymous FTP attack, DNS buffer overflow attempt, Subject of an Email which contains a virus, etc.

Layer two contains an intrusion detection system using a SVM classifier to classify whether the signature is malicious or not. This classifier learns from a training set such as NSL-KDD data set and then classifies the signature using this knowledge.
