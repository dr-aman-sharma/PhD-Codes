par_file='';
efix=5.0;
emode=1;
alatt=[9.843,9.843,9.843];
angdeg=[90,90,90];
u=[2,0,0]; v=[0,2,2];
omega=0; dpsi=0; gl=0; gs=0;
spedir='D:\\LET K2Ni2(SO4)3\\5meV\\';
psi=linspace(1,50,50);
sqw_file='D:\\LET K2Ni2(SO4)3\\sqw_files\\sqw_obj.sqw';
spefile =cell(1,50);
for i=1:50
    spefile{i}=[spedir,'LET647',num2str(26+i),'_5.00meV_OneToOne.nxspe'];
end

accumulate_sqw (spefile, par_file, sqw_file, efix, emode, alatt, angdeg,u, v, psi, omega, dpsi, gl, gs);