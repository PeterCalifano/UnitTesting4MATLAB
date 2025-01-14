%% DESCRIPTION
% Main script to run tests in a more convenient way than just using "runtests" command.
% -------------------------------------------------------------------------------------------------------------
%% CHANGELOG
% 14-01-2025    Pietro Califano     Implement first version.
% -------------------------------------------------------------------------------------------------------------

addpath( genpath( fullfile(pwd, 'utils') ) );

bRUN_ALL = true;

% Test exclusion list
cellExcludeTests = {};
cellIncludeTests = {}; % Leave empty to enable other modes

% TODO (PC) complete implementation with tests exclusion
% Get folders
% getDirStruct();

% Get all test files



% Mode selection
if bRUN_ALL == true
    enumUnitTestMode = EnumUnitTestMode.RunAll;
elseif not(isempty(cellIncludeTests))

end

% Default assumes that you cloned this module in repo_root/lib and that you have a repo_root/tests folder
charPathToThisDir = fileparts(mfilename);

charTestRootFolderPath = fullfile('..', '..', 'tests');
assert(isfolder(charTestRootFolderPath), 'Assumption on default project structure does not hold. Please specify "charTestRootFolderPath" manually.')

% Test execution calls
switch enumUnitTestMode
    case EnumUnitTestMode.RunAll
        objTestResults = runtests("BaseFolder", charTestRootFolderPath);

    case EnumUnitTestMode.SelectedOnly

        error('Not implemented yet >.<')

end

% Post processing
objResultsTable = table(objTestResults);
disp(objResultsTable);

