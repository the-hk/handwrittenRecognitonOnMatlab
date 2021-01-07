clear all;
clc;
dosyayeri='C:\Users\hmk44\OneDrive\Documents\MATLAB\git_project\ArmutThick2\';
dosyaturu='.jpg';

%burada klasörün içindeki jpeg uzantılı dosyaları alıyoruz 
icerik = dir([dosyayeri,'*',dosyaturu]);

resimSayisi = size(icerik,1);
A=zeros(30000,1);

for k=1:resimSayisi
    string = [dosyayeri,icerik(k,1).name];
    resim=imread(string);
    resim=imbinarize(resim);
    resim=imresize(resim,[100 100]);
    resim=double(resim);
    resim=reshape(resim,[],1);
    A(:,k)=resim;    
end
target = eye(resimSayisi);
giris=A;
[R,Q]=size(giris);
[S2,Q]=size(target);
S1=10;

net = newff(minmax(giris),[S1 S2],{'logsig' 'logsig'},'trainscg');
%net.LW(2,1)=net.LW(2,1)*0.01;
%net.b(2)=net.b(2)*0.01; 
net.trainParam.per='sse';
net.trainParam.epochs=10000;
net.trainParam.goal=1e-5;

net=train(net,giris,target);








