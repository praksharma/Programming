function varargout = singly_beam(varargin)
% SINGLY_BEAM MATLAB code for singly_beam.fig
%      SINGLY_BEAM, by itself, creates a new SINGLY_BEAM or raises the existing
%      singleton*.
%
%      H = SINGLY_BEAM returns the handle to a new SINGLY_BEAM or the handle to
%      the existing singleton*.
%
%      SINGLY_BEAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINGLY_BEAM.M with the given input arguments.
%
%      SINGLY_BEAM('Property','Value',...) creates a new SINGLY_BEAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before singly_beam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to singly_beam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help singly_beam

% Last Modified by GUIDE v2.5 22-Nov-2017 19:27:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @singly_beam_OpeningFcn, ...
                   'gui_OutputFcn',  @singly_beam_OutputFcn, ...
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


% --- Executes just before singly_beam is made visible.
function singly_beam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to singly_beam (see VARARGIN)

% Choose default command line output for singly_beam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes singly_beam wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = singly_beam_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double

% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_Callback(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l as text
%        str2double(get(hObject,'String')) returns contents of l as a double


% --- Executes during object creation, after setting all properties.
function l_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fck.
function fck_Callback(hObject, eventdata, handles)
% hObject    handle to fck (see GCBO)
Fck=0;
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns fck contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fck
% --- Executes during object creation, after setting all properties.
function fck_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in fy.
function fy_Callback(hObject, eventdata, handles)
% hObject    handle to fy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns fy contents as cell array
%        contents{get(hObject,'Value')} returns selected item from fy


% --- Executes during object creation, after setting all properties.
function fy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in beam.
function beam_Callback(hObject, eventdata, handles)
% hObject    handle to beam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns beam contents as cell array
%        contents{get(hObject,'Value')} returns selected item from beam


% --- Executes during object creation, after setting all properties.
function beam_CreateFcn(hObject, eventdata, handles)
% hObject    handle to beam (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dl_Callback(hObject, eventdata, handles)
% hObject    handle to dl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dl as text
%        str2double(get(hObject,'String')) returns contents of dl as a double


% --- Executes during object creation, after setting all properties.
function dl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ll_Callback(hObject, eventdata, handles)
% hObject    handle to ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ll as text
%        str2double(get(hObject,'String')) returns contents of ll as a double


% --- Executes during object creation, after setting all properties.
function ll_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
B=str2num(get(handles.b,'String'));
D=str2num(get(handles.d,'String'));
L=str2num(get(handles.l,'String'));
switch get(handles.fck,'Value')
    case 1 
        sFck=20;
    case 2 
        sFck=25;
    case 3 
        sFck=30;
    case 4 
        sFck=35;
    case 5 
        sFck=40;
    otherwise
end

switch get(handles.fy,'Value')
    case 1 
        sFy=250;
        sMUL=0.148*sFck*B*D*D*10^(-6);
    case 2 
        sFy=415;
        sMUL=0.138*sFck*B*D*D*10^(-6);
    case 3 
        sFy=500;
        sMUL=0.133*sFck*B*D*D*10^(-6);
        otherwise
end
DL=str2num(get(handles.dl,'String'));

LL=str2num(get(handles.ll,'String'));
SW=(B*(D+50)*25*10^(-6));
TFL=(DL+LL+SW)*1.5;
set(handles.tfl,'String',num2str(TFL));

switch get(handles.beam,'Value')
    case 1 
        sBMU=TFL*L*L/8;
    case 2 
        sBMU=TFL*L*L/2;
    otherwise
end
set(handles.bmu,'String',num2str(sBMU));
set(handles.mul,'String',num2str(sMUL));
if sBMU<=sMUL
    set(handles.tv,'String','Section is Under Reinforced');
        sAST=0.5*B*D*sFck/sFy*(1-sqrt(1-4.6*sBMU*10^6/sFck/B/D/D));
        
else set(handles.tv,'String','Section is Over Reinforced');
        sAST=0.5*B*D*sFck/sFy*(1-sqrt(1-4.6*sMUL*10^6/sFck/B/D/D));
        
end
set(handles.ast,'String',num2str(sAST));
guidata(hObject.handles);

function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cov_Callback(hObject, eventdata, handles)
% hObject    handle to cov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cov as text
%        str2double(get(hObject,'String')) returns contents of cov as a double


% --- Executes during object creation, after setting all properties.
function cov_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cov (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sN=str2num(get(handles.n,'String'));
sDIA=str2num(get(handles.dia,'String'));
sAAST=sN*3.1415*sDIA*sDIA/4;
set(handles.aast,'String',num2str(sAAST));
guidata(hObject.handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sCOV=str2num(get(handles.cov,'String'));
n1=str2num(get(handles.d,'String'));
n2=str2num(get(handles.n,'String'));
spa=(n1-2*sCOV)/n2;
st=strcat('provide ',num2str(n2));
st=strcat(st,'-');
st=strcat(st,get(handles.dia,'String'));
st=strcat(st,'mm dia@');
st=strcat(st,num2str(spa));
st=strcat(st,'c/c');
set(handles.tv,'String',st);


function dia_Callback(hObject, eventdata, handles)
% hObject    handle to dia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dia as text
%        str2double(get(hObject,'String')) returns contents of dia as a double


% --- Executes during object creation, after setting all properties.
function dia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
