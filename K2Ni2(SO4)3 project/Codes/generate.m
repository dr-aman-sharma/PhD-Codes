%% Sqw omega file for low stat dougnhut scans 5 meV, 2 K 
data_path='H:\\LET K2Ni2(SO4)3\\5meV\\';%directory where data files are
% data_path = '/mnt/ceph/instrument/LET/RBNumber/RB1910466/';
%par_file=[data_path,'4to1_102.par'];
par_file='';
sqw_file='H:\\LET K2Ni2(SO4)3\\sqw_files\\original.sqw';
efix=5.0;%Ei
runno=[65190:65290];%array of run numbers - must be array same size as psi
psi=[160:2:198 0:2:160];%values of sample orientation psi for each run
emode=1;%direct geometry spectrometer
alatt=[9.843,9.843,9.843];%lattice parameters
angdeg=[90,90,90];%lattice angles
u=[2,0,0]; v=[0,2,2];%scattering plane (u//ki when psi=0, v perp ki)
omega=0; dpsi=0; gl=0; gs=0;
spefile = {};
for i=1:numel(psi)
    spefile{i}=[data_path,'LET',num2str(runno(i)),'_5.00meV_OneToOne.nxspe'];%construct cell array of nxspe file names
end
    
accumulate_sqw (spefile, par_file, sqw_file, efix, emode, alatt, angdeg,...
        u, v, psi, omega, dpsi, gl, gs);%make the sqw file