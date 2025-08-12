function versionStr = toolboxversion()
    % TOOLBOXVERSION Return the version of the toolbox
    %
    %   VERSION = TOOLBOXVERSION() returns the version of the toolbox.
    %
    %   Example:
    %       version = mikestoolbox.toolboxversion()
    %
    %   See also mikestoolbox.toolboxdir

    rootPath = fileparts(fileparts(mfilename('fullpath')));
    contentsFile = fullfile(rootPath, 'Contents.m');

    fileStr = fileread(contentsFile);
   
    % First try to get a version with a sub-patch version number
    matchedStr = regexp(fileStr, 'Version \d*\.\d*\.\d*.\d*(?= )', 'match');

    % If not found, get major-minor-patch
    if isempty(matchedStr)
        matchedStr = regexp(fileStr, 'Version \d*\.\d*\.\d*(?= )', 'match');
    end

    if isempty(matchedStr)
        error('MIKESTOOLBOX:Version:VersionNotFound', ...
            'No version was detected for this Mikes Toolbox installation.')
    end
    versionStr = matchedStr{1};
end
