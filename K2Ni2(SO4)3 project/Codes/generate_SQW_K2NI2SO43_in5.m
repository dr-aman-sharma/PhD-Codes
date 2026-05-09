basePath = 'D:\IN5\';
basePath = [basePath '\'];

%% Sqw omega file for scans at 3.5 meV, 50 mK, loaded as powder
if 1
    dataPath = [basePath 'data'];
    par_file = [basePath 'mtd_parfile.par'];
    sqw_file = [dataPath,'final_sqw/KNISO_50mK_3p55meV_powder.sqw'];
    efix=3.55;
    runno = 203057 : 203057 + 80;
    psi = 390 : -2 : 230;
    emode=1;
    alatt=[9.843,9.843,9.843];
    angdeg=[90,90,90];
    u=[2,0,0]; v=[0,2,2];%scattering plane (u//ki when psi=0, v perp ki)
    omega=0; dpsi=0; gl=0; gs=0;
    spefile = {};
    for i=1:numel(psi)
        spefile{i}=[dataPath,'LET',num2str(runno(i)),'_5.00meV_OneToOne.nxspe'];%construct cell array of nxspe file names
    end
    gen_sqw_powder_test (spefile, par_file, sqw_file, efix, emode);%make the sqw file
end

%% Sqw omega file for scans at 3.5 meV, 50 mK
if 1
    dataPath = [basePath 'data'];
    par_file = [basePath 'mtd_parfile.par'];
    sqw_file = [dataPath,'final_sqw/KNISO_50mK_3p55meV_full.sqw'];
    efix=3.55;
    runno = 203057 : 203057 + 80;
    psi = 390 : -2 : 230;
    emode=1;
    alatt=[9.843,9.843,9.843];
    angdeg=[90,90,90];
    u=[2,0,0]; v=[0,2,2];%scattering plane (u//ki when psi=0, v perp ki)
    omega=0; dpsi=0; gl=0; gs=0;
    spefile = {};
        for i=1:numel(psi)
        spefile{i}=[dataPath,'LET',num2str(runno(i)),'_5.00meV_OneToOne.nxspe'];%construct cell array of nxspe file names
    end
    
    accumulate_sqw (spefile, par_file, sqw_file, efix, emode, alatt, angdeg,...
        u, v, psi, omega, dpsi, gl, gs);%make the sqw file
end
