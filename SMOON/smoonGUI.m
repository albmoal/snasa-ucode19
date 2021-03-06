function varargout = smoonGUI(varargin)
% SMOONGUI MATLAB code for smoonGUI.fig
%      SMOONGUI, by itself, creates a new SMOONGUI or raises the existing
%      singleton*.
%
%      H = SMOONGUI returns the handle to a new SMOONGUI or the handle to
%      the existing singleton*.
%
%      SMOONGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SMOONGUI.M with the given input arguments.
%
%      SMOONGUI('Property','Value',...) creates a new SMOONGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before smoonGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to smoonGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help smoonGUI

% Last Modified by GUIDE v2.5 23-Mar-2019 23:20:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @smoonGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @smoonGUI_OutputFcn, ...
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
end

% --- Executes just before smoonGUI is made visible.
function smoonGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to smoonGUI (see VARARGIN)

% Choose default command line output for smoonGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes smoonGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = smoonGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end


function hvideo1_Callback(hObject, eventdata, handles)
% hObject    handle to hvideo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hvideo1 as text
%        str2double(get(hObject,'String')) returns contents of hvideo1 as a double
end

% --- Executes during object creation, after setting all properties.
function hvideo1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hvideo1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end


function hsensor1_Callback(hObject, eventdata, handles)
% hObject    handle to hsensor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hsensor1 as text
%        str2double(get(hObject,'String')) returns contents of hsensor1 as a double
end

% --- Executes during object creation, after setting all properties.
function hsensor1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hsensor1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function hvideo2_Callback(hObject, eventdata, handles)
% hObject    handle to hvideo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hvideo2 as text
%        str2double(get(hObject,'String')) returns contents of hvideo2 as a double
end

% --- Executes during object creation, after setting all properties.
function hvideo2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hvideo2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function hsensor2_Callback(hObject, eventdata, handles)
% hObject    handle to hsensor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hsensor2 as text
%        str2double(get(hObject,'String')) returns contents of hsensor2 as a double
end

% --- Executes during object creation, after setting all properties.
function hsensor2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hsensor2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end

function MyProgressBar(handle, progress)
   % progress = 0.00001 .... 1

   % 1st panel
   p = uipanel(handle);

   % 2n panel as bar
   bar = uipanel(p);
    set(bar, 'BackgroundColor', 'default');
    x = get(bar, 'Position');
    x(3) = progress;       % Corresponds to % progress if unit = normalized
    set(bar, 'Position',x);
end

% --- Executes on button press in hsinc.
function hsinc_Callback(hObject, eventdata, handles)
% hObject    handle to hsinc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
v = get(handles.hdirect, 'string');
video = strcat(v,'.mp4');
[Ni,Nf,Fs,nuevo] = datatext(video);
N = Nf-Ni;

fileID= fopen('Mat2.txt','r');
fileID2=fopen('Mat.txt','r');
formatSpec= '%f\n';
A=fscanf(fileID,formatSpec);
B=fscanf(fileID2,formatSpec);

plot(handles.horg,A);
%axis tight;
plot(handles.hdesp,nuevo);
%axis tight;

obj = VideoReader(video,'CurrentTime',Ni/Fs);
ax = handles.hcine;
n = 1:N/Fs;
funct(n)=1;
    while hasFrame(obj)
        vidFrame = readFrame(obj);
        image(vidFrame, 'Parent', ax);
        set(ax, 'Visible', 'off');
    end
    clear obj
end



function hdirect_Callback(hObject, eventdata, handles)
% hObject    handle to hdirect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hdirect as text
%        str2double(get(hObject,'String')) returns contents of hdirect as a double

end
% --- Executes during object creation, after setting all properties.
function hdirect_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hdirect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
