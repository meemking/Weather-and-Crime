# NR stands for "Number Row" so I can treat the headers differently
# '\' says to include the next line in this command as well
NR == 1 {
	print $0  \
	",change_=0" \
	",change_1_to_5" \
	",change_5_to_10" \
	",change_10_to_20" \
	",change_20_to_30" \
	",change_30_to_40" \
	",change_40_to_50" \
	",change_>50" \
	",change_neg1_to_neg5" \
	",change_neg5_to_neg10" \
	",change_neg10_to_neg20" \
	",change_neg20_to_neg30" \
	",change_neg30_to_neg40" \
	",change_neg40_to_neg50" \
	",change_>neg50"
}
(NR > 1) {
	print $0 \
	"," ($29 == 0 ? 1 : 0) \
	"," (0 < $29 && $29 < 5 ? 1 : 0) \
	"," (5 <= $29 && $29 < 10 ? 1 : 0) \
	"," (10 <= $29 && $29 < 20 ? 1 : 0) \
	"," (20 <= $29 && $29 < 30 ? 1 : 0) \
	"," (30 <= $29 && $29 < 40 ? 1 : 0) \
	"," (40 <= $29 && $29 < 50 ? 1 : 0) \
	"," (50 <= $29 ? 1 : 0) \
	"," (0 > $29 && $29 > -5 ? 1 : 0) \
	"," (-5 >= $29 && $29 > -10 ? 1 : 0) \
	"," (-10 >= $29 && $29 > -20 ? 1 : 0) \
	"," (-20 >= $29 && $29 > -30 ? 1 : 0) \
	"," (-30 >= $29 && $29 > -40 ? 1 : 0) \
	"," (-40 >= $29 && $29 > -50 ? 1 : 0) \
	"," ($29 <= -50 ? 1 : 0)
}
