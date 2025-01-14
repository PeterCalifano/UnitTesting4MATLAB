classdef testBasicTemplateClass < matlab.unittest.TestCase
    properties
        bIsAvailableEverywhere
        dVariable_for_all_tests
    end

    methods (TestClassSetup)
        % Shared setup for the entire test class (class-level test fixtures)
        function setupTestClassEnv(testCase)

            testCase.dVariable_for_all_tests = 10;
            testCase.bIsAvailableEverywhere = true;

            % Add path to src
            addpath(fullfile('..', 'src_example'));
        end
    end

    methods (TestMethodSetup)
        % Setup for each test (method-level test fixtures)

    end

    methods (Test)
        % Test methods

        function testFunctionToTest(testCase)

            % Call the function to test
            output = functionToTest(testCase.dVariable_for_all_tests);

            % The function should just return the input
            testCase.assertEqual(output, testCase.dVariable_for_all_tests);

        end

        function testFunctionToTestErrors(testCase)

            % Call the function to test, now expecting an error due to wrong input
            input = struct();
            testCase.verifyError(@() functionToTest(input), ...
                'functionToTest:InputMustBeNumeric')

            input = zeros(3,1);
            % Call the function to test now expecting an error
            testCase.verifyError(@() functionToTest(input), ...
                'MATLAB:validation:IncompatibleSize')

        end
    end

end
