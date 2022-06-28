function varargout = TP02(varargin)
% TP02 MATLAB code for TP02.fig
%      TP02, by itself, creates a new TP02 or raises the existing
%      singleton*.
%
%      H = TP02 returns the handle to a new TP02 or the handle to
%      the existing singleton*.
%
%      TP02('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TP02.M with the given input arguments.
%
%      TP02('Property','Value',...) creates a new TP02 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TP02_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TP02_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TP02

% Last Modified by GUIDE v2.5 15-Mar-2022 08:52:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TP02_OpeningFcn, ...
                   'gui_OutputFcn',  @TP02_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TP02 is made visible.
function TP02_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TP02 (see VARARGIN)

% Choose default command line output for TP02
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TP02 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TP02_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in btnD.
function btnD_Callback(hObject, eventdata, handles)
% hObject    handle to btnD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
n=1;
    switch get(get(handles.GA,'SelectedObject'),'Tag')
        case 'AT'
            A=1;
        case 'AF'
            A=0;
    end
    switch get(get(handles.GB,'SelectedObject'),'Tag')
        case 'BT'
            B=1;
        case 'BF'
            B=0;
    end
    D = 0;
    C = 0;
    F = 0;
    G = 0;
    E = 0;
    while (n < 1000) && (D == 0)
        if (A==1) && (C==1)
             F=1;
        end
    
        if (A==1) && (E==1)
            G=1;
        end
    
        if (B==1)
            E=1;
        end
    
        if (G==1)
            D=1;
            ss = sprintf('D is TRUE and # iterations is = %.0f', n);
        end
    
        n = n+1;
    end
        if (D==1)
            set(handles.txtout, 'String',ss);
        else
    set(handles.txtout, 'String', 'D is FALSE');
        end
    
    
