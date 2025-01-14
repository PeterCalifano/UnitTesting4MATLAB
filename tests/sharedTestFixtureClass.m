classdef sharedTestFixtureClass < matlab.unittest.fixtures.Fixture

    properties (SetAccess=private)
        SharedResource
    end

    methods
        function setup(fixture)
            shared_fixture_var = 10;
            % Code to set up the shared resource
            fixture.SharedResource = shared_fixture_var;
            disp('Setting up shared resource...');

        end

        function teardown(testCase) %#ok<MANU>
            % Code to clean up the shared resource
            disp('Tearing down shared resource...');
            clc
        end
    end

end
