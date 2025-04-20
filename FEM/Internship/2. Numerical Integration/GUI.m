function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 14-Jun-2018 21:16:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of F as text
%        str2double(get(hObject,'String')) returns contents of F as a double


% --- Executes during object creation, after setting all properties.
function F_CreateFcn(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function U_Callback(hObject, eventdata, handles)
% hObject    handle to U (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U as text
%        str2double(get(hObject,'String')) returns contents of U as a double


% --- Executes during object creation, after setting all properties.
function U_CreateFcn(hObject, eventdata, handles)
% hObject    handle to U (see GCBO)
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=get(handles.F,'String');
u=str2num(get(handles.U,'String'));
l=str2num(get(handles.L,'String'));
h=(u-l)/10;
tab=zeros(2,10);
for i=0:10     
    tab(1,i+1)=l+i*h;
    x=tab(1,1+i);
    tab(2,1+i)=eval(f);
end
int_trap=h/2*(sum(tab(2,1:10))+2*sum(tab(2,2:9)));
int_simp_1_3=h/3*(sum(tab(2,1:10))+4*sum(tab(2,2:2:9))+2*sum(tab(2,3:2:8)));
int_simp_3_8=3*h/8*(sum(tab(2,1:10))+2*sum(tab(2,4:3:7))+3*(tab(2,1)+tab(2,2)+tab(2,4)+tab(2,5)+tab(2,7)+tab(2,8)));
int_weedle=3*h/10*(tab(2,1)+5*tab(2,2)+tab(2,3)+6*tab(2,4)+tab(2,5)+5*tab(2,6)+2*tab(2,7)+5*tab(2,8)+tab(2,9)+5*tab(2,10));
set(handles.T,'String',num2str(int_trap));
set(handles.S1,'String',num2str(int_simp_1_3));
set(handles.S3,'String',num2str(int_simp_3_8));
set(handles.W,'String',num2str(int_weedle));
