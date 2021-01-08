clear all;
clc;
dosyayeri='C:\Users\hmk44\OneDrive\Documents\MATLAB\git_project\ArmutThick\';
dosyaturu='.jpeg';

%burada klasörün içindeki jpeg uzantılı dosyaları alıyoruz 
icerik = dir([dosyayeri,'*',dosyaturu]);

resimSayisi = size(icerik,1);
A=zeros(10000,1);

for k=1:resimSayisi
    string = [dosyayeri,icerik(k,1).name];
    resim=imread(string);
    resim=imbinarize(resim);
    resim=imresize(resim,[100 100]);
    resim=double(resim);
    resim=reshape(resim,[],1);
    A(:,k)=resim;    
end
%burada hedef matrisimizi belirtiyoruz ve aynı zamanda hedef matrsimizden ve
%giris matrisimizden boyut bilgilerini cekiyoruz bu bilgileri yapay sinir
%ağları üretirken kullanacağız
target = eye(resimSayisi);
giris=A;
[R,Q]=size(giris);
[S2,Q]=size(target);
S1=10;

%burada yapay sinir ağlarımızı logaritmik simoid şekilde eğğitiyoruz
%yukarıda aldığımız S1 ve S2 değerlerini burada yerine yazarsak yaklaşık
%300000 tane inputumuz ve 9 tane outputumuz olacak
net = newff(minmax(giris),[S1 S2],{'logsig' 'logsig'},'trainscg');
net.trainParam.per='sse';
net.trainParam.epochs=10000;
net.trainParam.goal=1e-5;
net=train(net,giris,target);

%son olarak eğittiğimiz ağı kaydediyoruz
save net




