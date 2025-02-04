% testTemplateScript for MATLAB unit testing framework
% AUTHOR: Peter C., 14-01-2025
% (VERY) BASIC USATE NOTES:
% All files containing tests (and only those) must contain the word "test" as this example.
% All unittests start from the code defined in the "Shared variables section".
% Variables and operations defined in each unit test are NOT accessible to others.
% Therefore, each unittest must be as independent from the other as possible.
% To define a test assertion in scripts, use "assert(condition)" syntax.
% To run all tests in a folder, use command: test_results = runtests();
% Note that each test will run even if any other fails.

% Add paths for tests (default location)
addpath(genpath("../../matlab/")) % Points to matlab src folder for current repo
addpath(genpath("../../lib/UnitTesting4MATLAB/utils"))

% Shared variables section (test setup)
test_var = 10;

% Add here any precondition to run the tests. 
% If they fail, ALL test are marked as incomplete or failed.
%% unittest_1
disp(test_var)
test_var = 20;
disp(test_var)
test_var2 = 15;

assert(test_var + test_var2 == 35);
assert(test_var == 20);

%% unittest_2
disp(test_var)
assert(exist("test_var2", "var") == false)
assert(test_var == 10);

% END OF TESTS
