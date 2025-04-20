function varargout = fixed_beam(varargin)
% FIXED_BEAM MATLAB code for fixed_beam.fig
%      FIXED_BEAM, by itself, creates sdewef new FIXED_BEAM or raises the existing
%      singleton*.
%
%      H = FIXED_BEAM returns the handle to sdewef new FIXED_BEAM or the handle to
%      the existing singleton*.
%
%      FIXED_BEAM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FIXED_BEAM.MGH with the given input arguments.
%
%      FIXED_BEAM('Property','Value',...) creates sdewef new FIXED_BEAM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fixed_beam_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fixed_beam_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fixed_beam

% Last Modified by GUIDE v2.5 26-May-2018 16:48:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fixed_beam_OpeningFcn, ...
                   'gui_OutputFcn',  @fixed_beam_OutputFcn, ...
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


% --- Executes just before fixed_beam is made visible.
function fixed_beam_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in sdewef future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fixed_beam (see VARARGIN)

% Choose default command line output for fixed_beam
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fixed_beam wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fixed_beam_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in sdewef future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in sdewef future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
a=imread('1.jpg');
imshow(a);
% Hint: place code in OpeningFcn to populate axes1



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



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of E as text
%        str2double(get(hObject,'String')) returns contents of E as a double


% --- Executes during object creation, after setting all properties.
function E_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double


% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double


% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M_Callback(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M as text
%        str2double(get(hObject,'String')) returns contents of M as a double


% --- Executes during object creation, after setting all properties.
function M_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M (see GCBO)
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
l=str2num(get(handles.L,'String'));
b=str2num(get(handles.B,'String'));
d=str2num(get(handles.D,'String'));
e=str2num(get(handles.E,'String'));
a=str2num(get(handles.A,'String'));
p=str2num(get(handles.P,'String'));
m=str2num(get(handles.M,'String'));
Aa=[-p,-m];
i=b*d*d*d/12*10^(-12);
b=l-a;
c1=12*e*i/a/a/a;
c2=6*e*i/a/a;
c3=4*e*i/a;
c4=2*e*i/a;
km1=[c1,c2,-c1,c2;c2,c3,-c2,c4;-c1,-c2,c1,-c2;c2,c4,-c2,c3];
c1=12*e*i/b/b/b;
c2=6*e*i/b/b;
c3=4*e*i/b;
c4=2*e*i/b;
km2=[c1,c2,-c1,c2;c2,c3,-c2,c4;-c1,-c2,c1,-c2;c2,c4,-c2,c3];
ka=[km1(3,3)+km2(1,1),km1(3,4)+km2(1,2);km1(4,3)+km2(2,1),km1(4,4)+km2(2,2)];
del_S=(inv(ka))*Aa;
set(handles.del,'String',num2str(del_S(1,1)));
set(handles.rotat,'String',num2str(del_S(2,1)));