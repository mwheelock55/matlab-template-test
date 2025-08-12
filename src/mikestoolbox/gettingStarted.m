function gettingStarted()
    % GETTINGSTARTED Open the getting started guide for the toolbox
    %
    %   GETTINGSTARTED() opens the getting started guide for the toolbox.
    %
    %   Example:
    %       mikestoolbox.gettingStarted()
    %
    %   See also mikestoolbox.toolboxdir, mikestoolbox.toolboxversion

    % Display welcome message
    fprintf('Welcome to Mikes Toolbox!\n\n');
    fprintf('This is a test of the toolbox template provided\n\n');
    
    % Display version information
    fprintf('Version: %s\n', mikestoolbox.toolboxversion());
    
    % Display directory information
    fprintf('Toolbox directory: %s\n\n', mikestoolbox.toolboxdir());
    
    % Display available functions
    fprintf('Available functions:\n');
    fprintf('  - mikestoolbox.toolboxdir\n');
    fprintf('  - mikestoolbox.toolboxversion\n');
    fprintf('  - mikestoolbox.gettingStarted\n\n');
    
    % Display examples
    fprintf('Examples:\n');
    examplesDir = fullfile(mikestoolbox.toolboxdir(), 'code', 'examples');
    if exist(examplesDir, 'dir')
        exampleFiles = dir(fullfile(examplesDir, '*.m'));
        if ~isempty(exampleFiles)
            for i = 1:length(exampleFiles)
                fprintf('  - %s\n', exampleFiles(i).name);
            end
        else
            fprintf('  No examples found.\n');
        end
    else
        fprintf('  Examples directory not found.\n');
    end
    
    % Display documentation
    fprintf('\nDocumentation:\n');
    docsDir = fullfile(mikestoolbox.toolboxdir(), 'docs');
    if exist(docsDir, 'dir')
        fprintf('  Documentation is available in the docs directory:\n');
        fprintf('  %s\n', docsDir);
    else
        fprintf('  Documentation directory not found.\n');
    end
    
    fprintf('\nFor more information, see the README.md file in the toolbox directory.\n');
end
