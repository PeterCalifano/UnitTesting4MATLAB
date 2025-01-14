classdef (SharedTestFixtures = {sharedTestFixtureClass()}) testSharedFixtureTemplateClass < matlab.unittest.TestCase
    
    properties
        SharedResource
    end

    methods(TestClassSetup)
        % Shared setup for the entire test class
        % No class setup code here, because it is done in the shared fixture!
    end
    
    methods(TestMethodSetup)
        % Setup for each test

    end
    
    methods(Test)
        % Test methods
        
        function testVariableInSharedFixture(testCase)
            fixture = sharedTestFixtureClass();
            testCase.applyFixture(fixture); % TODO (PC) understand what it does, for now seems really useless

            fprintf('\nGot variable from shared fixture: %d', testCase.SharedResource);
        end
    end
    
end
