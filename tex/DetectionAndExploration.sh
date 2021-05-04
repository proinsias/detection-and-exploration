#!/bin/bash

y=DetectionAndExploration

if latex $y; then

    if bibtex $y; then

        if latex $y; then

            cp -f DetectionAndExploration.lot.bck DetectionAndExploration.lot

            if latex $y; then

                # dvips -z -Ppdf -o $y.ps $y
                dvips -o $y.ps $y
                # ps2pdf13 -dAutoRotatePages=/None $y.ps $y.pdf

            fi
        fi
    fi
fi

# rm *.aux *.blg *.dvi *.log *.tmp
# rm *.dvi *.log *.tmp

# killall Preview

# open -a Preview $y.pdf
