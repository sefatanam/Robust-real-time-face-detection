function [FeatureType1Value] = CalcValuesFeaturesType1Vector(Features,j,Set)
%subtract rectangle below from rectangle above
    rectangleAboveSum =  FetchIIValue(Features{1}(4,j),Set ) - ...
                                                        FetchIIValue(Features{1}(3,j),Set) - ...
                                                        FetchIIValue(Features{1}(2,j),Set) + ...
                                                        FetchIIValue(Features{1}(1,j),Set);
    rectangleBelowSum =  FetchIIValue(Features{1}(6,j),Set) - ...
                                                        FetchIIValue(Features{1}(4,j),Set) - ...
                                                        FetchIIValue(Features{1}(5,j),Set) + ...
                                                        FetchIIValue(Features{1}(3,j),Set);
     FeatureType1Value = rectangleAboveSum - rectangleBelowSum;
end