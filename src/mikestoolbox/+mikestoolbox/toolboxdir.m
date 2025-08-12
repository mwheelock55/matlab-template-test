function rootDir = toolboxdir()
    % TOOLBOXDIR Return the root directory of the toolbox
    %
    %   ROOT_DIR = TOOLBOXDIR() returns the root directory of the toolbox.
    %
    %   Example:
    %       rootDir = mikestoolbox.toolboxdir()
    %
    %   See also mikestoolbox.toolboxversion

    % Get the location of this function
    functionPath = mfilename('fullpath');
    
    % Get the package directory (+mikestoolbox)
    packageDir = fileparts(functionPath);
    
    % Get the code directory (parent of package directory)
    codeDir = fileparts(packageDir);
    
    % Get the toolbox root directory (parent of code directory)
    rootDir = fileparts(codeDir);
end
