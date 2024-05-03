This project develops an intelligent fish feeding system that dispenses feed based on fish behavior, using data analysis and artificial neural networks.


The project is based on a paper published in the IEEE Access journal. The paper proposes an intelligent fish feeding system that uses fish behavioral vibration analysis and artificial neural networks[1].

## Project Description

The system aims to dispense feed based on the feeding intensity of the fish. The model was developed using acceleration and angular velocity data obtained through a data logger that incorporated a triaxial accelerometer, magnetometer, and gyroscope for predicting fish behavioral activities[1].

To improve the system accuracy, we developed a novel 8-directional Chain Code generator algorithm that extracts the vectors representing escape, swimming, and feeding activities[1]. The sequence vectors extracted were further processed using Discrete Fourier Transform, and then the Fourier Descriptors of the individual activity representations were computed[1].

These Fourier Descriptors are fed into an artificial neural network, the results of which are evaluated and compared with the Fourier Descriptors obtained directly from the acceleration and angular velocity data[1].

## Implementation

The implementation of this project involves the following steps:

1. Collection of acceleration and angular velocity data using a data logger.
2. Application of the 8-directional Chain Code generator algorithm to extract vectors representing fish activities.
3. Processing of the sequence vectors using Discrete Fourier Transform.
4. Computation of Fourier Descriptors of the individual activity representations.
5. Feeding the Fourier Descriptors into an artificial neural network for evaluation.

## Results

The developed model using Fourier Descriptors obtained from Chain Code has an accuracy of 100%. In comparison, the developed classifier using Fourier Descriptors obtained directly from the fish movements acceleration, and angular velocity has an accuracy of 35.60%[1].

## Conclusion

The results showed that the proposed system could be used in dispensing feeds successfully without human intervention based on the fish requirements[1].

## Reference

https://staff.futminna.edu.ng/EEE/content/journal/PF0504/64.pdf / 10.1109/ACCESS.2020.2994442
