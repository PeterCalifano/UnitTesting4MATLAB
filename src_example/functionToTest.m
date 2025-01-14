function [outputVariable] = functionToTest(inputVariable)
arguments
    inputVariable (1,1) {isscalar}
end

if ~isa(inputVariable,'numeric')
    error('functionToTest:InputMustBeNumeric', ...
        'Input must be numeric.');
end

outputVariable = inputVariable;

end

