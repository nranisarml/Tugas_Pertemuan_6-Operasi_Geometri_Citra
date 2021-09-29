function varargout = OperasiGeometrik(varargin)
% OPERASIGEOMETRIK MATLAB code for OperasiGeometrik.fig
%      OPERASIGEOMETRIK, by itself, creates a new OPERASIGEOMETRIK or raises the existing
%      singleton*.
%
%      H = OPERASIGEOMETRIK returns the handle to a new OPERASIGEOMETRIK or the handle to
%      the existing singleton*.
%
%      OPERASIGEOMETRIK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERASIGEOMETRIK.M with the given input arguments.
%
%      OPERASIGEOMETRIK('Property','Value',...) creates a new OPERASIGEOMETRIK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OperasiGeometrik_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OperasiGeometrik_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OperasiGeometrik

% Last Modified by GUIDE v2.5 30-Sep-2021 03:54:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OperasiGeometrik_OpeningFcn, ...
                   'gui_OutputFcn',  @OperasiGeometrik_OutputFcn, ...
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


% --- Executes just before OperasiGeometrik is made visible.
function OperasiGeometrik_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OperasiGeometrik (see VARARGIN)

% Choose default command line output for OperasiGeometrik
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OperasiGeometrik wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OperasiGeometrik_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a
global gray_a
a = imread('NuranisaRamli.jpg');
%Transformasi ke Citra Keabuan
gray_a = rgb2gray(a);
axes(handles.axes1)
imshow (gray_a)



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
global biner_a
%Transformasi Biner
biner_a = imbinarize (gray_a);
axes(handles.axes2)
imshow (biner_a)



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global b
global gray_b
b = imread ('alam.jpeg');
%Transformasi ke Citra Keabuan
gray_b = rgb2gray(b);
axes(handles.axes3)
imshow (gray_b)




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 global gray_b
 global biner_b
%Transformasi Biner
biner_b = imbinarize (gray_b);
axes(handles.axes4)
imshow (biner_b)



% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
global gray_b
%Operasi Penjumlahan Citra
Penj = imadd (gray_a,gray_b);
axes(handles.axes5)
imshow (Penj)



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
global gray_b
%Operasi Pengurangan Citra
Peng = imsubtract (gray_a,gray_b);
axes(handles.axes6)
imshow (Peng)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
global gray_b
%Operasi Perkalian Citra
Per = immultiply (gray_a,gray_b);
axes(handles.axes7)
imshow (Per)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
global gray_b
%Operasi Pembagian Citra
Pem = imdivide (gray_a,gray_b);
axes(handles.axes8)
imshow (Pem)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global biner_a
global biner_b

%AND/NAND
ANB = and (biner_a, biner_b);
axes(handles.axes9)
imshow (ANB)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global biner_a
global biner_b

%OR/NOR
AOB = or (biner_a, biner_b);
axes(handles.axes10)
imshow (AOB)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global biner_a
global biner_b

%XOR/XNOR
AXB = xor (biner_a, biner_b);
axes(handles.axes11)
imshow (AXB)



% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global biner_a

%NOT
notA = not (biner_a);
axes(handles.axes12)
imshow (notA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
%Operasi Penskalaan
[p l]= size(gray_a);
geserx=10;
gesery=20;
for i = 1:p
    for j = 1:l
        scale(2*i,2*j)=gray_a(i,j);
    end
end
axes(handles.axes13)
imshow (scale)



% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
%Operasi Refleksi
hor_1 = fliplr(gray_a);
axes(handles.axes14)
imshow (hor_1)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gray_a
%Operasi Refleksi
ver_1 = flipud(gray_a);
axes(handles.axes15)
imshow (ver_1)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ver_1
%Operasi Refleksi
hor_2 = fliplr(ver_1);
axes(handles.axes16)
imshow (hor_2)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
closereq();
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete("handles.pushbutton17");
