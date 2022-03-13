function varargout = t(varargin)
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

% Last Modified by GUIDE v2.5 04-Jan-2018 19:15:02

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
function singly_beam_OpeningFcn(hObject, ~, handles, varargin)
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



function Bf_Callback(hObject, eventdata, handles)
% hObject    handle to Bf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bf as text
%        str2double(get(hObject,'String')) returns contents of Bf as a double

% --- Executes during object creation, after setting all properties.
function Bf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Df_Callback(hObject, eventdata, handles)
% hObject    handle to Df (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Df as text
%        str2double(get(hObject,'String')) returns contents of Df as a double


% --- Executes during object creation, after setting all properties.
function Df_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Df (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
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
bf=str2num(get(handles.Bf,'String'));
df=str2num(get(handles.Df,'String'));
l=str2num(get(handles.L,'String'));
dw=str2num(get(handles.Dw,'String'));
bw=str2num(get(handles.Bw,'String'));
switch get(handles.type,'Value')
    case 1
        bef=min(bf,l*1000/(l*1000/bf+4)+bw);
    case 2
        bef=min(bf,l*1000/6+bw+6*df);
    otherwise
end
set(handles.test,'String',bef);

switch get(handles.fck,'Value')
    case 1 
        Fck=20;
    case 2 
        Fck=25;
    case 3 
        Fck=30;
    case 4 
        Fck=35;
    case 5 
        Fck=40;
    otherwise
end
switch get(handles.fy,'Value')
    case 1 
        Fy=250;
        xul=0.53*(df+dw)*10^(-6);
    case 2 
        Fy=415;
        xul=0.48*(df+dw)*10^(-6);
    case 3 
        Fy=500;
        xul=0.46*(df+dw)*10^(-6);
        otherwise
end


DL=str2num(get(handles.dl,'String'));

LL=str2num(get(handles.ll,'String'));
SW=bf*df*25*10^(-6)+bw*(dw+50)*25*10^(-6); % b*D*25 in kN/m
TFL=(DL+LL+SW)*1.5;
set(handles.tfl,'String',num2str(TFL));

switch get(handles.beam,'Value')
    case 1 
        BMU=TFL*l*l/8;
    case 2 
        BMU=TFL*l*l/2;
    otherwise
end
set(handles.bmu,'String',num2str(BMU));
%set(handles.mul,'String',num2str(sMUL));
if xul<=df
       set(handles.tv,'String','Neutral Axis Lies Within the Flange');
        ast=0.5*bf*(df+dw)*Fck/Fy*(1-sqrt(1-4.6*BMU*10^6/Fck/bf/(df+dw)/(df+dw)));
        
elseif (xul>df)&&((df/xul)<0.43)
        ast=0.36*Fck*bw*xul/0.87/Fy+0.45*Fck*(bef-bw)*df/.87/Fy;

else
        yf=0.15*xul+0.65*df;
        ast=0.36*Fck*bw*xul/0.87/Fy+0.45*Fck*(bef-bw)*yf/.87/Fy;
end 
set(handles.Ast,'String',num2str(ast));
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
sAAST=sN*pi*sDIA*sDIA/4;
set(handles.aast,'String',num2str(sAAST));
guidata(hObject.handles);

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

sCOV=str2num(get(handles.cov,'String'));
n1=str2num(get(handles.Bw,'String'));
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


% --- Executes on selection change in type.
function type_Callback(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns type contents as cell array
%        contents{get(hObject,'Value')} returns selected item from type


% --- Executes during object creation, after setting all properties.
function type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
imshow('C:\Users\HP ProBook 4150s\Desktop\Matlab\T.JPG');
axes(handles.axes2)
axes off



function Bw_Callback(hObject, eventdata, handles)
% hObject    handle to Bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Bw as text
%        str2double(get(hObject,'String')) returns contents of Bw as a double


% --- Executes during object creation, after setting all properties.
function Bw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Bw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dw_Callback(hObject, eventdata, handles)
% hObject    handle to dgbddb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dgbddb as text
%        str2double(get(hObject,'String')) returns contents of dgbddb as a double


% --- Executes during object creation, after setting all properties.
function dgbddb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dgbddb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
