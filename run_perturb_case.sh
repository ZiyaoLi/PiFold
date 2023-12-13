for scale in 0.0 0.1 0.2 0.3 0.5 1.0 2.0;
    do
        echo $peratom
        python main.py --data_root="../data/" --checkpoint ../pifold_ckp.pth --res_dir ./out --noise_scale $scale
        python main.py --data_root="../data/" --checkpoint ../pifold_ckp.pth --res_dir ./out --noise_scale $scale --noise_per_atom
    done
