mkdir -p tag15h6/us_letter/8in/
for id in {00000..00029};
do
    convert ../apriltag-imgs/tag16h5/tag16_05_$id.png \
        -density 300 \
        -scale $((100 * 300 / 8 * 8))% \
        -bordercolor black -border 1 \
        -gravity center -extent $((300*17/2))x$((300*11)) \
        -gravity south -annotate +0+$((300/4)) "AprilTag family = tag16h5, size = 8 in, id = $id" \
        tag15h6/us_letter/8in/tag16h5_8in_id$id.pdf
done
convert -density 300 $(ls -rt tag15h6/us_letter/8in/tag16h5_8in_id*.pdf) tag15h6/us_letter/8in/tag16h5_8in.pdf
