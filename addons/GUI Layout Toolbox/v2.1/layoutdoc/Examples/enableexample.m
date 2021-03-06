%% Enabling/disabling a panel
%
%   This example opens a simple user-interface with a panel full of
%   buttons. We can then enable/disbale the entire panel in one go. Note
%   that the previous state of the buttons is preserved. 
%
%   Copyright 2009-2013 The MathWorks Ltd.

%% Open a window and add a panel
fig = figure( 'Name', 'Enable example', ...
    'Position', [100 100 150 250], ...
    'MenuBar', 'none', ...
    'ToolBar', 'none', ...
    'NumberTitle', 'off' );
panel = uix.BoxPanel( 'Parent', fig, 'Title', 'Panel' );

%% Put some buttons inside the panel
box = uix.VButtonBox( 'Parent', panel );
uicontrol( 'Parent', box, 'String', 'Button 1' );
uicontrol( 'Parent', box, 'String', 'Button 2' );
uicontrol( 'Parent', box, 'String', 'Button 3', 'Enable', 'off' );
uicontrol( 'Parent', box, 'String', 'Button 4' );
uicontrol( 'Parent', box, 'String', 'Button 5', 'Enable', 'off' );
uicontrol( 'Parent', box, 'String', 'Button 6' );

%% Try disabling the panel
set( panel, 'Enable', 'off' );

%% Try enabling the panel
set( panel, 'Enable', 'on' );