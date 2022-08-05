//Maya ASCII 2020 scene
//Name: Fence.ma
//Last modified: Fri, Aug 05, 2022 07:18:17 PM
//Codeset: 1252
requires maya "2020";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202011110415-b1e20b88e2";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19044)\n";
fileInfo "UUID" "536759C7-4CB5-9F20-E0AD-6FA6166FB4C6";
createNode transform -s -n "persp";
	rename -uid "BE2D3A41-48D1-5E68-DC73-4B97D9BE2DCD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 14.970864364493956 19.773524639276253 -2.9903071983663914 ;
	setAttr ".r" -type "double3" -47.13835273353277 448.99999999987887 1.8224161192371708e-13 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "775ACFDC-44FB-C25E-EC49-29981A27FF64";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.237936613092359;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "86D6B93B-4F1F-7299-0E41-CA9DA14A1AED";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.65707411524117276 1000.1031918847638 -2.0967861304127737 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "886B191E-455C-0E9F-9FBA-74A114BB59D1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 996.73610738158993;
	setAttr ".ow" 10.626007970238346;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -0.39750447869300842 3.3670845031738281 -2.4909663969104461 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B502AE6B-41F1-08E0-0B72-D2B5B93C54A3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "3949EAE2-42D7-53FF-E301-4EB5FAAE86C2";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "11416703-4017-84CC-F079-5F8F078AA411";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E1518A97-48F1-FC20-A579-53AA0D5C817C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "VerticalSticks4";
	rename -uid "3C84E9FD-4601-103A-7E09-159E862C62F7";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -3.8139700522466757 ;
	setAttr ".r" -type "double3" 0 2.328758852702562 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape2" -p "VerticalSticks4";
	rename -uid "A056AA85-4977-3AAE-5237-30A12830CE0F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "polySurface3" -p "VerticalSticks4";
	rename -uid "5C12E4F9-4138-FD38-B8CE-658711331D56";
	setAttr ".hio" yes;
createNode transform -n "transform13" -p "polySurface3";
	rename -uid "9B032FB8-4C03-2DBC-F579-7AA1CA77B7D5";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape9" -p "transform13";
	rename -uid "C9D07CA6-4905-A290-B40F-C48EBC2F8100";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".hio" yes;
createNode transform -n "transform12" -p "VerticalSticks4";
	rename -uid "CC3FB56A-40A4-AD61-023F-AAA3BA90313E";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "VerticalSticksShape4" -p "transform12";
	rename -uid "7E33E063-4150-E59B-DB6F-C48585BCB5D9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".hio" yes;
createNode transform -n "polySurface2";
	rename -uid "A0D5A1B4-4F8D-58A9-1A1F-ECB4A11AB6B4";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".hio" yes;
createNode transform -n "transform10" -p "polySurface2";
	rename -uid "69971C6B-4D55-345E-F1C1-F298CFCA8BA0";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape8" -p "transform10";
	rename -uid "BE558B9D-4C35-CF0E-2637-56A7CC68392F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".hio" yes;
createNode transform -n "pCube7";
	rename -uid "7157AA5D-44F4-1D8F-87AA-EEBDE6538FF6";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.5723115267905674 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".rp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".sp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".hio" yes;
createNode transform -n "transform9" -p "pCube7";
	rename -uid "8E0A7DBA-4460-11DB-8871-19BD3EBF27FB";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape7" -p "transform9";
	rename -uid "2C28EC3A-449E-C155-A708-108A0F1AB532";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".hio" yes;
createNode transform -n "HorizontalStick1";
	rename -uid "E4B21722-42DA-6FBB-5C81-39825E02BB69";
	setAttr ".t" -type "double3" 0.095900246339605588 1.7012944609234166 0.5723115267905674 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".rp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".sp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape5" -p "HorizontalStick1";
	rename -uid "0BE4A98B-4CDD-864C-73DC-F284AE78145D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.029798687 0 0 0.029798687 
		0 0 0.029798687 0 0 0.029798687 0 0 -5.5374761 0 0 -5.5374761 0 0 -5.5374761 0 0 
		-5.5374761;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform11" -p "HorizontalStick1";
	rename -uid "0905F2F4-4A5C-2DD1-988E-68AA16D3ED5A";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "HorizontalStickShape1" -p "transform11";
	rename -uid "5CB69826-449E-87AC-425C-F098108B6776";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".hio" yes;
createNode transform -n "pCube9";
	rename -uid "443D85EA-4690-4901-ED91-178449B5CCC4";
	setAttr ".t" -type "double3" 0.095900246339605588 1.7012944609234166 0.5723115267905674 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".rp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".sp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape5" -p "pCube9";
	rename -uid "BB250633-4F47-6A9A-DD9C-639EC2186CF8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.029798687 0 0 0.029798687 
		0 0 0.029798687 0 0 0.029798687 0 0 -5.5374761 0 0 -5.5374761 0 0 -5.5374761 0 0 
		-5.5374761;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform8" -p "pCube9";
	rename -uid "F949FC73-4DCA-37A8-5463-70ACB9D12664";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape9" -p "transform8";
	rename -uid "077F0BDF-4A33-5A49-4DED-DCB207A95EF6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.44999998807907104 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.27500001 0.25 0.375 0.35000002 0.625 0.35000002 0.72500002
		 0.25 0.625 0.89999998 0.72499996 0 0.27500001 0 0.375 0.89999998 0.185 0 0.375 0.81
		 0.625 0.81 0.81500006 0 0.625 0.44 0.81500006 0.25 0.185 0.25 0.375 0.44;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 -0.062867731 0 0 -0.062867731 
		0 0 -0.062867701 0 0 -0.062867701 0;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.52979869 0.5 -0.5 0.52979869
		 -0.5 0.5 0.52979869 0.5 0.5 0.52979869 -0.5 0.5 -6.037476063 0.5 0.5 -6.037476063
		 -0.5 -0.5 -6.037476063 0.5 -0.5 -6.037476063 -0.5 0.5 -2.097111225 0.5 0.5 -2.097111225
		 0.5 -0.5 -2.097110987 -0.5 -0.5 -2.097110987 -0.5 -0.5 -4.46133041 0.5 -0.5 -4.46133041
		 0.5 0.5 -4.46133041 -0.5 0.5 -4.46133041;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 8 0
		 3 9 0 4 6 0 5 7 0 6 12 0 7 13 0 8 15 0 9 14 0 10 1 0 11 0 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 11 0 13 10 0 14 5 0 15 4 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 16 13 26 -13
		mu 0 4 15 16 26 29
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 24 21 18 -21
		mu 0 4 23 24 18 21
		f 4 17 -22 25 -14
		mu 0 4 17 19 25 27
		f 4 27 20 19 12
		mu 0 4 28 22 20 14
		f 4 1 7 -17 -7
		mu 0 4 2 3 16 15
		f 4 -15 -18 -8 -6
		mu 0 4 1 19 17 3
		f 4 -19 14 -1 -16
		mu 0 4 21 18 9 8
		f 4 -20 15 4 6
		mu 0 4 14 20 0 2
		f 4 3 11 -25 -11
		mu 0 4 6 7 24 23
		f 4 -26 -12 -10 -23
		mu 0 4 27 25 10 11
		f 4 -27 22 -3 -24
		mu 0 4 29 26 5 4
		f 4 10 -28 23 8
		mu 0 4 12 22 28 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube10";
	rename -uid "40AFDC54-435F-BE57-0130-40BA5CF3DF1F";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.5723115267905674 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".rp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".sp" -type "double3" 0 0 -2.7538386881351471 ;
	setAttr ".hio" yes;
createNode transform -n "transform7" -p "pCube10";
	rename -uid "47776A15-4505-3E63-C8C9-4F979BDF31F8";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape10" -p "transform7";
	rename -uid "EAAFE9C3-4FBD-4118-2920-D4B7177DB363";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5000000074505806 0.41249999403953552 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.2 0.25 0.375 0.42500001 0.625 0.42500001 0.80000001
		 0.25 0.625 0.82499999 0.80000001 0 0.2 0 0.375 0.82499999 0.30500001 0.25 0.375 0.31999999
		 0.625 0.31999999 0.69500005 0.25 0.625 0.93000001 0.69499999 0 0.30500001 0 0.375
		 0.93000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  0 0.10614043 0 0 0.10614043 
		0 0 0.10614049 0 0 0.10614049 0;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.52979869 0.5 -0.5 0.52979869
		 -0.5 0.5 0.52979869 0.5 0.5 0.52979869 -0.5 0.5 -6.037476063 0.5 0.5 -6.037476063
		 -0.5 -0.5 -6.037476063 0.5 -0.5 -6.037476063 -0.5 0.5 -4.067293167 0.5 0.5 -4.067293167
		 0.5 -0.5 -4.067293167 -0.5 -0.5 -4.067293167 -0.5 0.5 -1.30903804 0.5 0.5 -1.30903804
		 0.5 -0.5 -1.30903792 -0.5 -0.5 -1.30903792;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 12 0
		 3 13 0 4 6 0 5 7 0 6 11 0 7 10 0 8 4 0 9 5 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 1 0 15 0 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 16 13 -3 -13
		mu 0 4 15 16 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 18 -11
		mu 0 4 6 7 18 21
		f 4 17 -12 -10 -14
		mu 0 4 17 19 10 11
		f 4 10 19 12 8
		mu 0 4 12 20 14 13
		f 4 24 21 -17 -21
		mu 0 4 23 24 16 15
		f 4 25 -15 -18 -22
		mu 0 4 25 27 19 17
		f 4 -19 14 26 -16
		mu 0 4 21 18 26 29
		f 4 -20 15 27 20
		mu 0 4 14 20 28 22
		f 4 1 7 -25 -7
		mu 0 4 2 3 24 23
		f 4 -23 -26 -8 -6
		mu 0 4 1 27 25 3
		f 4 -27 22 -1 -24
		mu 0 4 29 26 9 8
		f 4 -28 23 4 6
		mu 0 4 22 28 0 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube11";
	rename -uid "E4C2EFDC-4BF2-F0AA-E613-66AEA1DAA41B";
	setAttr ".t" -type "double3" 0.49640432359239489 0 0.64897077134976033 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape3" -p "pCube11";
	rename -uid "DD91ABE4-44B8-0184-20F1-8A87A1132FD9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform6" -p "pCube11";
	rename -uid "9D23A9FE-4F92-6569-7FCC-7EB3A8CE443B";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape11" -p "transform6";
	rename -uid "571A3FAF-4B30-F4AB-86AF-1E8EA2D8E6A4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966301 
		0 0.83089179 -0.41966301 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.48480129 -0.29500896 -0.5 0.48480129
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5
		 -0.5 -0.5 -0.51519871 -0.29500896 -0.5 -0.51519871 -0.5 5.68733549 0.4555285 -0.29500896 5.68733549 0.4555285
		 -0.29500896 5.68733549 -0.5444715 -0.5 5.68733549 -0.5444715 -0.5 1.97493434 0.45005178
		 -0.29500896 1.97493434 0.45005178 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube12";
	rename -uid "2956361B-42AC-5608-FE8A-CC82DD39797A";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -4.9446270698518244 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape1" -p "pCube12";
	rename -uid "0F1E6B42-48E5-1017-645B-D385333386DE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform5" -p "pCube12";
	rename -uid "DE33F2CA-429E-DD5A-AB9A-5E80A0BDFC8A";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape12" -p "transform5";
	rename -uid "7EAA34FB-47D8-15E2-1417-7594F8AA1E78";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966301 
		0 0.83089179 -0.41966301 0 0.83089179 0.41966307 0 0.83089179 0.41966307;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.41751146 -0.29500896 -0.5 0.41751146
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5
		 -0.5 -0.5 -0.58248854 -0.29500896 -0.5 -0.58248854 -0.5 5.68733549 0.45552826 -0.29500896 5.68733549 0.45552826
		 -0.29500896 5.68733549 -0.54447174 -0.5 5.68733549 -0.54447174 -0.5 1.97493434 0.45005178
		 -0.29500896 1.97493434 0.45005178 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube13";
	rename -uid "97DA14DE-4273-3659-2CB4-45B8A389BF3B";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -3.8139700522466757 ;
	setAttr ".r" -type "double3" 0 2.328758852702562 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape2" -p "pCube13";
	rename -uid "DEBFFE7A-4490-1CF1-C563-87807E61EED5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform4" -p "pCube13";
	rename -uid "9CF828D4-45D0-71D3-9F04-E394F4F80E93";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape13" -p "transform4";
	rename -uid "B9CC9305-45DB-1549-633D-4B98F86A92F4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966301 
		0 0.83089179 -0.41966301 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.41751122 -0.29500896 -0.5 0.41751122
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5
		 -0.5 -0.5 -0.58248854 -0.29500896 -0.5 -0.58248854 -0.5 5.68733549 0.4555285 -0.29500896 5.68733549 0.4555285
		 -0.29500896 5.68733549 -0.54447174 -0.5 5.68733549 -0.54447174 -0.5 1.97493434 0.45005178
		 -0.29500896 1.97493434 0.45005178 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube14";
	rename -uid "80397012-4C1B-06D7-2C9A-2B82EE451904";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -2.7207250804060146 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape3" -p "pCube14";
	rename -uid "2235633D-42C4-E2B8-000E-C592C15DF78A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform3" -p "pCube14";
	rename -uid "CFDE0969-44BD-94E5-9E41-6D878848951A";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape14" -p "transform3";
	rename -uid "B0839CAD-4748-E056-F437-23A72AEA4F45";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966301 
		0 0.83089179 -0.41966301 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.48480129 -0.29500896 -0.5 0.48480129
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5
		 -0.5 -0.5 -0.51519871 -0.29500896 -0.5 -0.51519871 -0.5 5.68733549 0.4555285 -0.29500896 5.68733549 0.4555285
		 -0.29500896 5.68733549 -0.5444715 -0.5 5.68733549 -0.5444715 -0.5 1.97493434 0.45005178
		 -0.29500896 1.97493434 0.45005178 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube15";
	rename -uid "57F564D9-47C2-7058-0B1F-92B140D36E16";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -1.6258544751463067 ;
	setAttr ".r" -type "double3" 0 -179.36512352427721 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".hio" yes;
createNode mesh -n "polySurfaceShape4" -p "pCube15";
	rename -uid "150D6744-43E5-2D84-5631-DDBDE73F1664";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[1]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[7]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "transform2" -p "pCube15";
	rename -uid "90148BBF-45F1-4CDF-D56C-2FB62ADA4855";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape15" -p "transform2";
	rename -uid "8EE02610-4D80-5D27-64F9-5082BFF16EEE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966307 
		0 0.83089179 -0.41966307 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.45552838 -0.29500896 5.68733549 0.45552838
		 -0.29500896 5.68733549 -0.5444715 -0.5 5.68733549 -0.5444715 -0.5 1.97493434 0.45005167
		 -0.29500896 1.97493434 0.45005167 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "pCube16";
	rename -uid "56B9100F-46BE-5CBA-6E7D-DC9F6DDA0950";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -0.49640432359239484 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 0.0022778809070587158 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 0.0022778809070587158 ;
	setAttr ".hio" yes;
createNode transform -n "transform1" -p "pCube16";
	rename -uid "CD32C226-4E34-F98C-14D9-3299D607962B";
	setAttr ".v" no;
	setAttr ".hio" yes;
createNode mesh -n "pCubeShape16" -p "transform1";
	rename -uid "C2078FB3-48C1-F06A-4EA1-B88219135C41";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.22500000149011612 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[16]" -type "float3" 0 0.83089179 -0.41966301 ;
	setAttr ".pt[17]" -type "float3" 0 0.83089179 -0.41966301 ;
	setAttr ".pt[18]" -type "float3" 0 0.83089179 0.41966301 ;
	setAttr ".pt[19]" -type "float3" 0 0.83089179 0.41966301 ;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.49999997 -0.29500896 7.23416901 -0.49999997
		 -0.5 -0.5 -0.49999997 -0.29500896 -0.5 -0.49999997 -0.5 5.68733549 0.45552841 -0.29500896 5.68733549 0.45552841
		 -0.29500896 5.68733549 -0.54447162 -0.5 5.68733549 -0.54447162 -0.5 1.97493434 0.54902738
		 -0.29500896 1.97493434 0.54902738 -0.29500896 1.9749341 -0.45097259 -0.5 1.9749341 -0.45097259
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.49999997
		 -0.5 7.23416901 -0.49999997;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".hio" yes;
createNode transform -n "IntactModel";
	rename -uid "1B588BCE-4635-8B3F-2A07-A1994C403CA7";
	setAttr ".t" -type "double3" 0.0020232121524448449 -0.042178313303974146 0 ;
	setAttr ".rp" -type "double3" 0.095900246339605602 3.7825303077697754 -2.1890724176683904 ;
	setAttr ".sp" -type "double3" 0.095900246339605602 3.7825303077697754 -2.1890724176683904 ;
createNode mesh -n "IntactModelShape" -p "IntactModel";
	rename -uid "42D9DC3F-473B-327C-976B-41823BB56CDE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.82543689012527466 0.25288518518209457 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BrokenPieces";
	rename -uid "DB663D06-432D-FBF1-E87A-399D598CFE9D";
createNode transform -n "HorizontalStickPiece" -p "BrokenPieces";
	rename -uid "B4E38C6B-47A8-2E0C-3961-33B4093DD438";
	setAttr ".t" -type "double3" 0.095900246339605588 1.7012944609234166 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
	setAttr ".rp" -type "double3" 0 -0.021768655853806964 -4.0672935247421265 ;
	setAttr ".sp" -type "double3" 0 -0.031433850526809692 -4.0672935247421265 ;
	setAttr ".spt" -type "double3" 0 0.0096651946730027284 0 ;
createNode mesh -n "HorizontalStickPieceShape" -p "HorizontalStickPiece";
	rename -uid "6F113446-4095-DED5-335F-DEAF5EB2E1DC";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HorizontalStickPiece1" -p "BrokenPieces";
	rename -uid "F88DEDA4-4E2B-AC8E-EADC-778F9482BF11";
	setAttr ".t" -type "double3" 0.095900246339605588 1.7012944609234166 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
createNode mesh -n "HorizontalStickPieceShape1" -p "HorizontalStickPiece1";
	rename -uid "62F1B6EC-4841-E5D4-43C7-D6B68678EADE";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HStickPiece2" -p "BrokenPieces";
	rename -uid "72610F4C-4C0B-106A-1E81-AEA539C130C4";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
createNode mesh -n "HStickPieceShape2" -p "HStickPiece2";
	rename -uid "5576A492-4863-EA11-8541-50A40D615B66";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HStickPiece" -p "BrokenPieces";
	rename -uid "03BD7F5B-4D96-4834-15DD-AFBB34F65115";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
createNode mesh -n "HStickPieceShape" -p "HStickPiece";
	rename -uid "1EBC9489-40FE-574C-4464-96930FC750A5";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "HStickPiece1" -p "BrokenPieces";
	rename -uid "A23FD1BC-4154-0BF6-65F8-8782CDB88BC1";
	setAttr ".t" -type "double3" 0.095900246339605588 6.130961703055676 0.57231152679056763 ;
	setAttr ".s" -type "double3" 0.35399773479555202 0.69252272594605102 1 ;
createNode mesh -n "HStickPieceShape1" -p "HStickPiece1";
	rename -uid "1F3B7094-4454-040F-2C4E-559732B21DF6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "VerticalSticks6" -p "BrokenPieces";
	rename -uid "3FF97FFD-484E-C7A0-D674-BE9EFB3244CB";
	setAttr ".t" -type "double3" 0.49640432359239489 0 0.64897077134976033 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.02497410774230957 ;
createNode mesh -n "VerticalSticksShape6" -p "VerticalSticks6";
	rename -uid "89787AC4-4C98-FB35-74E7-21BFDB2375F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape3" -p "VerticalSticks6";
	rename -uid "75F2E4DE-4FCC-6DEC-2A3E-5CAB20810B3D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.015198617 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape6" -p "VerticalSticks6";
	rename -uid "04226A20-4DB5-AF88-B336-CC90C00CA412";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 30 ".uvst[0].uvsp[0:29]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[16:19]" -type "float3"  0 0.83089179 -0.41966301 
		0 0.83089179 -0.41966301 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
	setAttr -s 20 ".vt[0:19]"  -0.5 -0.5 0.48480129 -0.29500896 -0.5 0.48480129
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5
		 -0.5 -0.5 -0.51519871 -0.29500896 -0.5 -0.51519871 -0.5 5.68733549 0.4555285 -0.29500896 5.68733549 0.4555285
		 -0.29500896 5.68733549 -0.5444715 -0.5 5.68733549 -0.5444715 -0.5 1.97493434 0.45005178
		 -0.29500896 1.97493434 0.45005178 -0.29500896 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994822
		 -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5 -0.29500896 7.23416901 -0.5 -0.5 7.23416901 -0.5;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1 2 16 0 3 17 0
		 16 17 0 5 18 0 17 18 0 4 19 0 19 18 0 16 19 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 30 32 -35 -36
		mu 0 4 26 27 28 29
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24
		f 4 1 29 -31 -29
		mu 0 4 2 3 27 26
		f 4 7 31 -33 -30
		mu 0 4 3 5 28 27
		f 4 -3 33 34 -32
		mu 0 4 5 4 29 28
		f 4 -7 28 35 -34
		mu 0 4 4 2 26 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VerticalSticks5" -p "BrokenPieces";
	rename -uid "B959C9FA-4E4E-69A0-C31E-9D9B2A49A44E";
	setAttr ".t" -type "double3" 0.49640432359239489 0 -4.9446270698518244 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.7825303077697754 -0.041244268417358398 ;
createNode mesh -n "VerticalSticksShape5" -p "VerticalSticks5";
	rename -uid "089BBDED-4793-A8C8-6242-90BA0B67D2EB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "VerticalSticks5";
	rename -uid "556BCEBF-41E9-ADBB-B320-5097E4F64C96";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.2 0.625 0.2 0.625 0.55000001 0.875 0.2 0.125
		 0.2 0.375 0.55000001 0.375 0.080000006 0.625 0.080000006 0.625 0.67000002 0.875 0.079999998
		 0.125 0.079999998 0.375 0.67000002;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[1]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.082488716 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.082488731 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.044471584 ;
	setAttr ".pt[12]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[13]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[14]" -type "float3" 0 0 -0.049948335 ;
	setAttr ".pt[15]" -type "float3" 0 0 -0.049948335 ;
	setAttr -s 16 ".vt[0:15]"  -0.5 -0.5 0.5 -0.29500896 -0.5 0.5 -0.5 7.23416901 0.5
		 -0.29500896 7.23416901 0.5 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.5 -0.5 -0.5 -0.5
		 -0.29500896 -0.5 -0.5 -0.5 5.68733549 0.5 -0.29500896 5.68733549 0.5 -0.29500896 5.68733549 -0.5
		 -0.5 5.68733549 -0.5 -0.5 1.97493434 0.5 -0.29500896 1.97493434 0.5 -0.29500896 1.9749341 -0.5
		 -0.5 1.9749341 -0.5;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 3 0 4 5 0 6 7 0 0 12 0 1 13 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 14 0 11 15 0 8 9 1 9 10 1 10 11 1
		 11 8 1 12 8 0 13 9 0 14 7 0 15 6 0 12 13 1 13 14 1 14 15 1 15 12 1;
	setAttr -s 14 -ch 56 ".fc[0:13]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 24 21 -17 -21
		mu 0 4 20 21 15 14
		f 4 25 -15 -18 -22
		mu 0 4 21 23 17 15
		f 4 -19 14 26 -16
		mu 0 4 19 16 22 25
		f 4 27 20 -20 15
		mu 0 4 24 20 14 18
		f 4 0 5 -25 -5
		mu 0 4 0 1 21 20
		f 4 -12 -23 -26 -6
		mu 0 4 1 10 23 21
		f 4 -27 22 -4 -24
		mu 0 4 25 22 7 6
		f 4 10 4 -28 23
		mu 0 4 12 0 20 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece6" -p "BrokenPieces";
	rename -uid "49ED6FFF-4818-BFC6-BF91-73A7FB213244";
	setAttr ".t" -type "double3" 0.49775192637777221 0 -3.8301560414205853 ;
	setAttr ".r" -type "double3" 0 2.328758852702562 0 ;
createNode mesh -n "VStickPieceShape6" -p "VStickPiece6";
	rename -uid "6731FC80-4C8E-0D7D-1434-E08A15F8364F";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "VStickPiece5" -p "BrokenPieces";
	rename -uid "5B5DC479-4B5E-622F-EC30-78B6FC39B14C";
	setAttr ".t" -type "double3" 0.49775192637777221 0 -3.8301560414205853 ;
	setAttr ".r" -type "double3" 0 2.328758852702562 0 ;
createNode mesh -n "VStickPieceShape5" -p "VStickPiece5";
	rename -uid "22397000-4D2D-2A4E-B3AD-D4BA24ECAAA1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "VStickPiece4" -p "BrokenPieces";
	rename -uid "64FEDE67-49C5-E189-BC9B-D1BDAC5CD381";
	setAttr ".t" -type "double3" 0.49775192637777221 0 -3.8301560414205853 ;
	setAttr ".r" -type "double3" 0 2.328758852702562 0 ;
createNode mesh -n "VStickPieceShape4" -p "VStickPiece4";
	rename -uid "482F7ADF-4E3B-C376-8F72-53BB74008575";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "VStickPiece7" -p "BrokenPieces";
	rename -uid "2526F1A7-42A8-BB1B-25D0-1CA6BD4F2B40";
	setAttr ".t" -type "double3" 0.54788429065458411 0 -2.7316033938531752 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
	setAttr ".rpt" -type "double3" -0.0023410464226914949 0 0.016206182179810534 ;
	setAttr ".sp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
createNode mesh -n "VStickPieceShape7" -p "VStickPiece7";
	rename -uid "23AD7B1B-4256-D9A1-2102-F49C33C215A7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.98687053 0.47367728
		 0.99800813 0.47367728 0.99800813 0.52800912 0.98687053 0.52800912 0.96917784 0.0038439913
		 0.98031539 0.0038439913 0.98031539 0.13831176 0.96917784 0.13831176 0.67682081 0.4736771
		 0.73115265 0.4736771 0.72938466 0.60814488 0.67505282 0.60814488 0.98687059 0.33276618
		 0.99800813 0.33276618 0.99800813 0.46723396 0.98687059 0.46723396 0.73721087 0.4736771
		 0.79154277 0.4736771 0.7933107 0.60814488 0.73897886 0.60814488 0.76502317 0.6231423
		 0.7843954 0.62501234 0.98031539 0.17700388 0.96917784 0.16571043 0.7027868 0.62760735
		 0.68558848 0.64036548 0.67499578 0.646837 0.79335117 0.63554358 0 0 1 0 0.5 1 0 0
		 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0
		 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  -0.5 -0.5 0.41751122 -0.29500896 -0.5 0.41751122
		 -0.50000006 -0.5 -0.58248806 -0.29500896 -0.5 -0.58248901 -0.5 1.97493434 0.45005178
		 -0.29500899 1.97493434 0.45005155 -0.29500899 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994869
		 -0.5 2.47921824 0.45079565 -0.29500896 2.68707848 0.4511025 -0.5 2.25096703 -0.070592165
		 -0.5 2.28538609 0.2859621 -0.29500902 2.56796789 0.2561388 -0.29500899 2.33314896 -0.060404301
		 -0.39750454 2.31920433 0.026638173;
	setAttr -s 33 ".ed[0:32]"  0 1 0 2 3 0 0 4 0 1 5 0 2 0 0 3 1 0 4 8 0
		 5 9 0 6 3 0 7 2 0 4 5 1 5 6 1 6 7 0 7 4 1 7 10 0 10 11 0 11 8 0 8 9 0 9 12 0 12 13 0
		 13 6 0 13 5 1 5 12 1 10 4 1 4 11 1 6 14 0 7 14 0 10 14 0 11 14 0 8 14 0 9 14 0 12 14 0
		 13 14 0;
	setAttr -s 20 -ch 66 ".fc[0:19]" -type "polyFaces" 
		f 4 1 5 -1 -5
		mu 0 4 0 1 2 3
		f 4 0 3 -11 -3
		mu 0 4 4 5 6 7
		f 4 -6 -9 -12 -4
		mu 0 4 8 9 10 11
		f 4 -13 8 -2 -10
		mu 0 4 12 13 14 15
		f 4 4 2 -14 9
		mu 0 4 16 17 18 19
		f 3 23 24 -16
		mu 0 3 20 18 21
		f 4 10 7 -18 -7
		mu 0 4 7 6 22 23
		f 3 11 -21 21
		mu 0 3 11 10 24
		f 3 22 -19 -8
		mu 0 3 11 25 26
		f 3 -22 -20 -23
		mu 0 3 11 24 25
		f 3 13 -24 -15
		mu 0 3 19 18 20
		f 3 -25 6 -17
		mu 0 3 21 18 27
		f 3 12 26 -26
		mu 0 3 28 29 30
		f 3 14 27 -27
		mu 0 3 31 32 33
		f 3 15 28 -28
		mu 0 3 34 35 36
		f 3 16 29 -29
		mu 0 3 37 38 39
		f 3 17 30 -30
		mu 0 3 40 41 42
		f 3 18 31 -31
		mu 0 3 43 44 45
		f 3 19 32 -32
		mu 0 3 46 47 48
		f 3 20 25 -33
		mu 0 3 49 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece8" -p "BrokenPieces";
	rename -uid "8775B813-4AE8-0524-C595-CE994B8F51FD";
	setAttr ".t" -type "double3" 0.54788429065458411 -0.020738723610022269 -2.7941664037028864 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
	setAttr ".rpt" -type "double3" -0.00057523815673753663 0 0.01617029082201232 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
createNode mesh -n "VStickPieceShape8" -p "VStickPiece8";
	rename -uid "CBFB6151-4566-8D77-C735-119CBD8A1740";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.96917784 0.34001338
		 0.98031539 0.34001338 0.98031539 0.42405576 0.96917784 0.42405576 0.92986047 0.48678038
		 0.92986047 0.47564286 0.93859029 0.47564286 0.93859029 0.48678038 0.98687059 0.047022186
		 0.99800813 0.047022186 0.99800813 0.13106453 0.98687059 0.13106453 0.67475528 0.80984646
		 0.72908711 0.80984646 0.72667086 0.89388889 0.67233908 0.89388889 0.73927641 0.80984646
		 0.79360831 0.80984646 0.7960245 0.89388889 0.7416926 0.89388889 0.96917784 0.29511842
		 0.98031539 0.30737484 0.67480344 0.77720791 0.69188714 0.7800355 0.73927641 0.80984646
		 0.75308257 0.79769671 0.98031539 0.46919972 0.96917784 0.46919972 0.70386982 0.93903273
		 0.69514012 0.93903273 0.98687059 0.0018782457 0.99800813 0.0018782457 0.7732234 0.93903273
		 0.7644937 0.93903273 0.76838183 0.78989935 0.77843118 0.77604675 0.79354203 0.76495147
		 0.71125263 0.79420042 0.72908711 0.80984646 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5
		 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.50000048 -0.5 5.68733549 0.4555285
		 -0.29500899 5.68733549 0.45552826 -0.5 8.065060616 0.080337048 -0.29500896 8.065060616 0.080336809
		 -0.29500896 8.065060616 -0.080337286 -0.5 8.065060616 -0.080337048 -0.29500896 5.68733549 -0.54447222
		 -0.5 5.68733549 -0.54447174 -0.29500902 5.39936399 -0.21622086 -0.29500902 5.1386528 0.14020896
		 -0.29500896 5.086609364 0.4546423 -0.5 4.86102533 0.45430946 -0.5 5.065238953 0.17618775
		 -0.5 5.32020092 -0.0087749958 -0.5 5.46371412 -0.29036331 -0.40889269 5.30105162 -0.042106073;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 0 2 0 1 3 0 2 11 0 3 10 0 4 0 0
		 5 1 0 4 5 1 5 10 1 11 4 1 0 6 0 1 7 0 6 7 0 3 8 0 7 8 0 2 9 0 9 8 0 6 9 0 15 4 0
		 14 5 0 18 4 1 4 17 1 16 4 1 13 5 1 5 12 1 10 11 0 12 10 0 13 12 0 14 13 0 15 14 0
		 16 15 0 17 16 0 18 17 0 11 18 0 10 19 0 11 19 0 12 19 0 13 19 0 14 19 0 15 19 0 16 19 0
		 17 19 0 18 19 0;
	setAttr -s 26 -ch 88 ".fc[0:25]" -type "polyFaces" 
		f 4 8 7 -1 -7
		mu 0 4 0 1 2 3
		f 4 13 15 -18 -19
		mu 0 4 4 5 6 7
		f 4 1 5 26 -5
		mu 0 4 8 9 10 11
		f 4 9 -6 -4 -8
		mu 0 4 12 13 14 15
		f 4 10 6 2 4
		mu 0 4 16 17 18 19
		f 4 30 20 -9 -20
		mu 0 4 20 21 1 0
		f 3 29 24 -21
		mu 0 3 22 23 12
		f 3 34 21 -11
		mu 0 3 24 25 17
		f 4 0 12 -14 -12
		mu 0 4 3 2 26 27
		f 4 3 14 -16 -13
		mu 0 4 15 14 28 29
		f 4 -2 16 17 -15
		mu 0 4 9 8 30 31
		f 4 -3 11 18 -17
		mu 0 4 19 18 32 33
		f 3 22 32 23
		mu 0 3 17 34 35
		f 3 -22 33 -23
		mu 0 3 17 25 34
		f 3 -24 31 19
		mu 0 3 17 35 36
		f 3 25 27 -10
		mu 0 3 12 37 38
		f 3 -25 28 -26
		mu 0 3 12 23 37
		f 3 -27 35 -37
		mu 0 3 39 40 41
		f 3 -28 37 -36
		mu 0 3 42 43 44
		f 3 -29 38 -38
		mu 0 3 45 46 47
		f 3 -30 39 -39
		mu 0 3 48 49 50
		f 3 -31 40 -40
		mu 0 3 51 52 53
		f 3 -32 41 -41
		mu 0 3 54 55 56
		f 3 -33 42 -42
		mu 0 3 57 58 59
		f 3 -34 43 -43
		mu 0 3 60 61 62
		f 3 -35 36 -44
		mu 0 3 63 64 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece9" -p "BrokenPieces";
	rename -uid "B375587F-4DD0-63A5-43E3-76834440B3C2";
	setAttr ".t" -type "double3" 0.54788429065458411 -4.169665774389486e-05 -2.7633849560886974 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
	setAttr ".rpt" -type "double3" -0.0016080285680215157 0 0.016191282341705911 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
createNode mesh -n "VStickPieceShape9" -p "VStickPiece9";
	rename -uid "64BC642C-4EEE-C1B3-14EA-AAA76434117A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:24]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.98687059 0.13106453
		 0.99800813 0.13106453 0.99800813 0.33276618 0.98687059 0.33276618 0.73897886 0.60814488
		 0.76502317 0.6231423 0.75308257 0.79769671 0.73927641 0.80984646 0.96917784 0.16571043
		 0.98031539 0.17700388 0.98031539 0.30737484 0.96917784 0.29511842 0.67499578 0.646837
		 0.68558848 0.64036548 0.7027868 0.62760735 0.72938466 0.60814488 0.72908711 0.80984646
		 0.71125263 0.79420042 0.69188714 0.7800355 0.67480344 0.77720791 0.77843118 0.77604675
		 0.7843954 0.62501234 0.79335117 0.63554358 0.79354203 0.76495147 0.76838183 0.78989935
		 0.7843954 0.62501234 0.76502317 0.6231423 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  -0.29500902 5.68733549 -0.54447222 -0.5 5.68733549 -0.54447174
		 -0.5 4.86102533 0.45430946 -0.29500896 5.086609364 0.4546423 -0.5 5.46371412 -0.29036331
		 -0.5 5.32020092 -0.0087749958 -0.5 5.065238953 0.17618752 -0.29500902 5.1386528 0.14020896
		 -0.29500905 5.39936399 -0.21622086 -0.29500902 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994917
		 -0.29500896 2.68707848 0.4511025 -0.29500902 2.56796789 0.2561388 -0.29500902 2.33314896 -0.060404539
		 -0.5 2.47921824 0.45079565 -0.5 2.28538609 0.28596234 -0.5 2.25096703 -0.070592165
		 -0.4088929 5.30105257 -0.042106152 -0.39750454 2.31920433 0.02663815;
	setAttr -s 42 ".ed[0:41]"  0 9 0 1 10 0 0 1 0 1 4 0 4 5 0 5 6 0 6 2 0
		 2 3 0 3 7 0 7 8 0 8 0 0 14 2 0 11 3 0 16 4 1 6 15 1 15 5 1 5 16 1 9 10 0 11 12 0
		 12 13 0 13 9 0 14 11 0 15 14 0 16 15 0 10 16 0 0 17 0 1 17 0 4 17 0 5 17 0 6 17 0
		 2 17 0 3 17 0 7 17 0 8 17 0 9 18 0 10 18 0 11 18 0 12 18 0 13 18 0 14 18 0 15 18 0
		 16 18 0;
	setAttr -s 25 -ch 84 ".fc[0:24]" -type "polyFaces" 
		f 4 -3 0 17 -2
		mu 0 4 0 1 2 3
		f 4 24 13 -4 1
		mu 0 4 4 5 6 7
		f 4 21 12 -8 -12
		mu 0 4 8 9 10 11
		f 8 18 19 20 -1 -11 -10 -9 -13
		mu 0 8 12 13 14 15 16 17 18 19
		f 4 14 22 11 -7
		mu 0 4 20 21 22 23
		f 3 16 23 15
		mu 0 3 24 5 21
		f 3 -16 -15 -6
		mu 0 3 24 25 20
		f 3 -14 -17 -5
		mu 0 3 6 26 24
		f 3 2 26 -26
		mu 0 3 27 28 29
		f 3 3 27 -27
		mu 0 3 30 31 32
		f 3 4 28 -28
		mu 0 3 33 34 35
		f 3 5 29 -29
		mu 0 3 36 37 38
		f 3 6 30 -30
		mu 0 3 39 40 41
		f 3 7 31 -31
		mu 0 3 42 43 44
		f 3 8 32 -32
		mu 0 3 45 46 47
		f 3 9 33 -33
		mu 0 3 48 49 50
		f 3 10 25 -34
		mu 0 3 51 52 53
		f 3 -18 34 -36
		mu 0 3 54 55 56
		f 3 -19 36 -38
		mu 0 3 57 58 59
		f 3 -20 37 -39
		mu 0 3 60 61 62
		f 3 -21 38 -35
		mu 0 3 63 64 65
		f 3 -22 39 -37
		mu 0 3 66 67 68
		f 3 -23 40 -40
		mu 0 3 69 70 71
		f 3 -24 41 -41
		mu 0 3 72 73 74
		f 3 -25 35 -42
		mu 0 3 75 76 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece10" -p "BrokenPieces";
	rename -uid "0DE83242-47AE-E1E6-6D1A-C681997AEABA";
	setAttr ".t" -type "double3" 0.54788429065458244 0 -1.6194200249256399 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
	setAttr ".rpt" -type "double3" -0.0023410464226914949 0 0.016206182179810534 ;
	setAttr ".sp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
createNode mesh -n "VStickPieceShape10" -p "VStickPiece10";
	rename -uid "52E3A363-4089-A1CB-B5FC-4CAEEB542BE8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.98687053 0.47367728
		 0.99800813 0.47367728 0.99800813 0.52800912 0.98687053 0.52800912 0.96917784 0.0038439913
		 0.98031539 0.0038439913 0.98031539 0.13831176 0.96917784 0.13831176 0.67682081 0.4736771
		 0.73115265 0.4736771 0.72938466 0.60814488 0.67505282 0.60814488 0.98687059 0.33276618
		 0.99800813 0.33276618 0.99800813 0.46723396 0.98687059 0.46723396 0.73721087 0.4736771
		 0.79154277 0.4736771 0.7933107 0.60814488 0.73897886 0.60814488 0.76502317 0.6231423
		 0.7843954 0.62501234 0.98031539 0.17700388 0.96917784 0.16571043 0.7027868 0.62760735
		 0.68558848 0.64036548 0.67499578 0.646837 0.79335117 0.63554358 0 0 1 0 0.5 1 0 0
		 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0
		 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  -0.5 -0.5 0.41751122 -0.29500896 -0.5 0.41751122
		 -0.50000006 -0.5 -0.58248806 -0.29500896 -0.5 -0.58248901 -0.5 1.97493434 0.45005178
		 -0.29500899 1.97493434 0.45005155 -0.29500899 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994869
		 -0.5 2.47921824 0.45079565 -0.29500896 2.68707848 0.4511025 -0.5 2.25096703 -0.070592165
		 -0.5 2.28538609 0.2859621 -0.29500902 2.56796789 0.2561388 -0.29500899 2.33314896 -0.060404301
		 -0.39750454 2.31920433 0.026638173;
	setAttr -s 33 ".ed[0:32]"  0 1 0 2 3 0 0 4 0 1 5 0 2 0 0 3 1 0 4 8 0
		 5 9 0 6 3 0 7 2 0 4 5 1 5 6 1 6 7 0 7 4 1 7 10 0 10 11 0 11 8 0 8 9 0 9 12 0 12 13 0
		 13 6 0 13 5 1 5 12 1 10 4 1 4 11 1 6 14 0 7 14 0 10 14 0 11 14 0 8 14 0 9 14 0 12 14 0
		 13 14 0;
	setAttr -s 20 -ch 66 ".fc[0:19]" -type "polyFaces" 
		f 4 1 5 -1 -5
		mu 0 4 0 1 2 3
		f 4 0 3 -11 -3
		mu 0 4 4 5 6 7
		f 4 -6 -9 -12 -4
		mu 0 4 8 9 10 11
		f 4 -13 8 -2 -10
		mu 0 4 12 13 14 15
		f 4 4 2 -14 9
		mu 0 4 16 17 18 19
		f 3 23 24 -16
		mu 0 3 20 18 21
		f 4 10 7 -18 -7
		mu 0 4 7 6 22 23
		f 3 11 -21 21
		mu 0 3 11 10 24
		f 3 22 -19 -8
		mu 0 3 11 25 26
		f 3 -22 -20 -23
		mu 0 3 11 24 25
		f 3 13 -24 -15
		mu 0 3 19 18 20
		f 3 -25 6 -17
		mu 0 3 21 18 27
		f 3 12 26 -26
		mu 0 3 28 29 30
		f 3 14 27 -27
		mu 0 3 31 32 33
		f 3 15 28 -28
		mu 0 3 34 35 36
		f 3 16 29 -29
		mu 0 3 37 38 39
		f 3 17 30 -30
		mu 0 3 40 41 42
		f 3 18 31 -31
		mu 0 3 43 44 45
		f 3 19 32 -32
		mu 0 3 46 47 48
		f 3 20 25 -33
		mu 0 3 49 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece11" -p "BrokenPieces";
	rename -uid "5C89B003-43E7-65A8-3D92-32B9353CFC74";
	setAttr ".t" -type "double3" 0.54788429065458244 -0.041419733783614632 -1.6710309006369226 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
	setAttr ".rpt" -type "double3" -0.00057523815673753663 0 0.01617029082201232 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
createNode mesh -n "VStickPieceShape11" -p "VStickPiece11";
	rename -uid "CFA89F14-4D44-207D-C5F9-548975E14C7D";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.96917784 0.34001338
		 0.98031539 0.34001338 0.98031539 0.42405576 0.96917784 0.42405576 0.92986047 0.48678038
		 0.92986047 0.47564286 0.93859029 0.47564286 0.93859029 0.48678038 0.98687059 0.047022186
		 0.99800813 0.047022186 0.99800813 0.13106453 0.98687059 0.13106453 0.67475528 0.80984646
		 0.72908711 0.80984646 0.72667086 0.89388889 0.67233908 0.89388889 0.73927641 0.80984646
		 0.79360831 0.80984646 0.7960245 0.89388889 0.7416926 0.89388889 0.96917784 0.29511842
		 0.98031539 0.30737484 0.67480344 0.77720791 0.69188714 0.7800355 0.73927641 0.80984646
		 0.75308257 0.79769671 0.98031539 0.46919972 0.96917784 0.46919972 0.70386982 0.93903273
		 0.69514012 0.93903273 0.98687059 0.0018782457 0.99800813 0.0018782457 0.7732234 0.93903273
		 0.7644937 0.93903273 0.76838183 0.78989935 0.77843118 0.77604675 0.79354203 0.76495147
		 0.71125263 0.79420042 0.72908711 0.80984646 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5
		 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.50000048 -0.5 5.68733549 0.4555285
		 -0.29500899 5.68733549 0.45552826 -0.5 8.065060616 0.080337048 -0.29500896 8.065060616 0.080336809
		 -0.29500896 8.065060616 -0.080337286 -0.5 8.065060616 -0.080337048 -0.29500896 5.68733549 -0.54447222
		 -0.5 5.68733549 -0.54447174 -0.29500902 5.39936399 -0.21622086 -0.29500902 5.1386528 0.14020896
		 -0.29500896 5.086609364 0.4546423 -0.5 4.86102533 0.45430946 -0.5 5.065238953 0.17618775
		 -0.5 5.32020092 -0.0087749958 -0.5 5.46371412 -0.29036331 -0.40889269 5.30105162 -0.042106073;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 0 2 0 1 3 0 2 11 0 3 10 0 4 0 0
		 5 1 0 4 5 1 5 10 1 11 4 1 0 6 0 1 7 0 6 7 0 3 8 0 7 8 0 2 9 0 9 8 0 6 9 0 15 4 0
		 14 5 0 18 4 1 4 17 1 16 4 1 13 5 1 5 12 1 10 11 0 12 10 0 13 12 0 14 13 0 15 14 0
		 16 15 0 17 16 0 18 17 0 11 18 0 10 19 0 11 19 0 12 19 0 13 19 0 14 19 0 15 19 0 16 19 0
		 17 19 0 18 19 0;
	setAttr -s 26 -ch 88 ".fc[0:25]" -type "polyFaces" 
		f 4 8 7 -1 -7
		mu 0 4 0 1 2 3
		f 4 13 15 -18 -19
		mu 0 4 4 5 6 7
		f 4 1 5 26 -5
		mu 0 4 8 9 10 11
		f 4 9 -6 -4 -8
		mu 0 4 12 13 14 15
		f 4 10 6 2 4
		mu 0 4 16 17 18 19
		f 4 30 20 -9 -20
		mu 0 4 20 21 1 0
		f 3 29 24 -21
		mu 0 3 22 23 12
		f 3 34 21 -11
		mu 0 3 24 25 17
		f 4 0 12 -14 -12
		mu 0 4 3 2 26 27
		f 4 3 14 -16 -13
		mu 0 4 15 14 28 29
		f 4 -2 16 17 -15
		mu 0 4 9 8 30 31
		f 4 -3 11 18 -17
		mu 0 4 19 18 32 33
		f 3 22 32 23
		mu 0 3 17 34 35
		f 3 -22 33 -23
		mu 0 3 17 25 34
		f 3 -24 31 19
		mu 0 3 17 35 36
		f 3 25 27 -10
		mu 0 3 12 37 38
		f 3 -25 28 -26
		mu 0 3 12 23 37
		f 3 -27 35 -37
		mu 0 3 39 40 41
		f 3 -28 37 -36
		mu 0 3 42 43 44
		f 3 -29 38 -38
		mu 0 3 45 46 47
		f 3 -30 39 -39
		mu 0 3 48 49 50
		f 3 -31 40 -40
		mu 0 3 51 52 53
		f 3 -32 41 -41
		mu 0 3 54 55 56
		f 3 -33 42 -42
		mu 0 3 57 58 59
		f 3 -34 43 -43
		mu 0 3 60 61 62
		f 3 -35 36 -44
		mu 0 3 63 64 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece12" -p "BrokenPieces";
	rename -uid "5B8D439A-4174-98DB-CDE2-BDBAF946AE92";
	setAttr ".t" -type "double3" 0.54788429065458244 0.0077742110214300553 -1.6350161137084607 ;
	setAttr ".r" -type "double3" 0 179.99999999999991 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
	setAttr ".rpt" -type "double3" -0.0016080285680215157 0 0.016191282341705911 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
createNode mesh -n "VStickPieceShape12" -p "VStickPiece12";
	rename -uid "72B0032D-46C7-9146-0BD0-2FAFE1B8EEA2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:24]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.98687059 0.13106453
		 0.99800813 0.13106453 0.99800813 0.33276618 0.98687059 0.33276618 0.73897886 0.60814488
		 0.76502317 0.6231423 0.75308257 0.79769671 0.73927641 0.80984646 0.96917784 0.16571043
		 0.98031539 0.17700388 0.98031539 0.30737484 0.96917784 0.29511842 0.67499578 0.646837
		 0.68558848 0.64036548 0.7027868 0.62760735 0.72938466 0.60814488 0.72908711 0.80984646
		 0.71125263 0.79420042 0.69188714 0.7800355 0.67480344 0.77720791 0.77843118 0.77604675
		 0.7843954 0.62501234 0.79335117 0.63554358 0.79354203 0.76495147 0.76838183 0.78989935
		 0.7843954 0.62501234 0.76502317 0.6231423 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  -0.29500902 5.68733549 -0.54447222 -0.5 5.68733549 -0.54447174
		 -0.5 4.86102533 0.45430946 -0.29500896 5.086609364 0.4546423 -0.5 5.46371412 -0.29036331
		 -0.5 5.32020092 -0.0087749958 -0.5 5.065238953 0.17618752 -0.29500902 5.1386528 0.14020896
		 -0.29500905 5.39936399 -0.21622086 -0.29500902 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994917
		 -0.29500896 2.68707848 0.4511025 -0.29500902 2.56796789 0.2561388 -0.29500902 2.33314896 -0.060404539
		 -0.5 2.47921824 0.45079565 -0.5 2.28538609 0.28596234 -0.5 2.25096703 -0.070592165
		 -0.4088929 5.30105257 -0.042106152 -0.39750454 2.31920433 0.02663815;
	setAttr -s 42 ".ed[0:41]"  0 9 0 1 10 0 0 1 0 1 4 0 4 5 0 5 6 0 6 2 0
		 2 3 0 3 7 0 7 8 0 8 0 0 14 2 0 11 3 0 16 4 1 6 15 1 15 5 1 5 16 1 9 10 0 11 12 0
		 12 13 0 13 9 0 14 11 0 15 14 0 16 15 0 10 16 0 0 17 0 1 17 0 4 17 0 5 17 0 6 17 0
		 2 17 0 3 17 0 7 17 0 8 17 0 9 18 0 10 18 0 11 18 0 12 18 0 13 18 0 14 18 0 15 18 0
		 16 18 0;
	setAttr -s 25 -ch 84 ".fc[0:24]" -type "polyFaces" 
		f 4 -3 0 17 -2
		mu 0 4 0 1 2 3
		f 4 24 13 -4 1
		mu 0 4 4 5 6 7
		f 4 21 12 -8 -12
		mu 0 4 8 9 10 11
		f 8 18 19 20 -1 -11 -10 -9 -13
		mu 0 8 12 13 14 15 16 17 18 19
		f 4 14 22 11 -7
		mu 0 4 20 21 22 23
		f 3 16 23 15
		mu 0 3 24 5 21
		f 3 -16 -15 -6
		mu 0 3 24 25 20
		f 3 -14 -17 -5
		mu 0 3 6 26 24
		f 3 2 26 -26
		mu 0 3 27 28 29
		f 3 3 27 -27
		mu 0 3 30 31 32
		f 3 4 28 -28
		mu 0 3 33 34 35
		f 3 5 29 -29
		mu 0 3 36 37 38
		f 3 6 30 -30
		mu 0 3 39 40 41
		f 3 7 31 -31
		mu 0 3 42 43 44
		f 3 8 32 -32
		mu 0 3 45 46 47
		f 3 9 33 -33
		mu 0 3 48 49 50
		f 3 10 25 -34
		mu 0 3 51 52 53
		f 3 -18 34 -36
		mu 0 3 54 55 56
		f 3 -19 36 -38
		mu 0 3 57 58 59
		f 3 -20 37 -39
		mu 0 3 60 61 62
		f 3 -21 38 -35
		mu 0 3 63 64 65
		f 3 -22 39 -37
		mu 0 3 66 67 68
		f 3 -23 40 -40
		mu 0 3 69 70 71
		f 3 -24 41 -41
		mu 0 3 72 73 74
		f 3 -25 35 -42
		mu 0 3 75 76 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece13" -p "BrokenPieces";
	rename -uid "B39D2932-4169-5968-263E-E18FE65E4D9F";
	setAttr ".t" -type "double3" 0.54788429065458077 0 -0.50973358243773847 ;
	setAttr ".r" -type "double3" 0 360.00000000000006 0 ;
	setAttr ".rp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
	setAttr ".rpt" -type "double3" -0.0023410464226914949 0 0.016206182179810534 ;
	setAttr ".sp" -type "double3" -0.39750450849533081 1.0935392379760742 -0.065693259239196777 ;
createNode mesh -n "VStickPieceShape13" -p "VStickPiece13";
	rename -uid "269E3A97-4346-0495-543B-42BA0082C993";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:19]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 52 ".uvst[0].uvsp[0:51]" -type "float2" 0.98687053 0.47367728
		 0.99800813 0.47367728 0.99800813 0.52800912 0.98687053 0.52800912 0.96917784 0.0038439913
		 0.98031539 0.0038439913 0.98031539 0.13831176 0.96917784 0.13831176 0.67682081 0.4736771
		 0.73115265 0.4736771 0.72938466 0.60814488 0.67505282 0.60814488 0.98687059 0.33276618
		 0.99800813 0.33276618 0.99800813 0.46723396 0.98687059 0.46723396 0.73721087 0.4736771
		 0.79154277 0.4736771 0.7933107 0.60814488 0.73897886 0.60814488 0.76502317 0.6231423
		 0.7843954 0.62501234 0.98031539 0.17700388 0.96917784 0.16571043 0.7027868 0.62760735
		 0.68558848 0.64036548 0.67499578 0.646837 0.79335117 0.63554358 0 0 1 0 0.5 1 0 0
		 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0
		 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  -0.5 -0.5 0.41751122 -0.29500896 -0.5 0.41751122
		 -0.50000006 -0.5 -0.58248806 -0.29500896 -0.5 -0.58248901 -0.5 1.97493434 0.45005178
		 -0.29500899 1.97493434 0.45005155 -0.29500899 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994869
		 -0.5 2.47921824 0.45079565 -0.29500896 2.68707848 0.4511025 -0.5 2.25096703 -0.070592165
		 -0.5 2.28538609 0.2859621 -0.29500902 2.56796789 0.2561388 -0.29500899 2.33314896 -0.060404301
		 -0.39750454 2.31920433 0.026638173;
	setAttr -s 33 ".ed[0:32]"  0 1 0 2 3 0 0 4 0 1 5 0 2 0 0 3 1 0 4 8 0
		 5 9 0 6 3 0 7 2 0 4 5 1 5 6 1 6 7 0 7 4 1 7 10 0 10 11 0 11 8 0 8 9 0 9 12 0 12 13 0
		 13 6 0 13 5 1 5 12 1 10 4 1 4 11 1 6 14 0 7 14 0 10 14 0 11 14 0 8 14 0 9 14 0 12 14 0
		 13 14 0;
	setAttr -s 20 -ch 66 ".fc[0:19]" -type "polyFaces" 
		f 4 1 5 -1 -5
		mu 0 4 0 1 2 3
		f 4 0 3 -11 -3
		mu 0 4 4 5 6 7
		f 4 -6 -9 -12 -4
		mu 0 4 8 9 10 11
		f 4 -13 8 -2 -10
		mu 0 4 12 13 14 15
		f 4 4 2 -14 9
		mu 0 4 16 17 18 19
		f 3 23 24 -16
		mu 0 3 20 18 21
		f 4 10 7 -18 -7
		mu 0 4 7 6 22 23
		f 3 11 -21 21
		mu 0 3 11 10 24
		f 3 22 -19 -8
		mu 0 3 11 25 26
		f 3 -22 -20 -23
		mu 0 3 11 24 25
		f 3 13 -24 -15
		mu 0 3 19 18 20
		f 3 -25 6 -17
		mu 0 3 21 18 27
		f 3 12 26 -26
		mu 0 3 28 29 30
		f 3 14 27 -27
		mu 0 3 31 32 33
		f 3 15 28 -28
		mu 0 3 34 35 36
		f 3 16 29 -29
		mu 0 3 37 38 39
		f 3 17 30 -30
		mu 0 3 40 41 42
		f 3 18 31 -31
		mu 0 3 43 44 45
		f 3 19 32 -32
		mu 0 3 46 47 48
		f 3 20 25 -33
		mu 0 3 49 50 51;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece14" -p "BrokenPieces";
	rename -uid "CCF567D1-4417-772F-7CD4-C197B948557F";
	setAttr ".t" -type "double3" 0.54788429065458077 0 -0.50973358243773847 ;
	setAttr ".r" -type "double3" 0 360.00000000000006 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
	setAttr ".rpt" -type "double3" -0.00057523815673753663 0 0.01617029082201232 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 6.4630429744720459 -0.022236108779907227 ;
createNode mesh -n "VStickPieceShape14" -p "VStickPiece14";
	rename -uid "C1576F95-48DF-1B0E-BCE8-0D9224A852A2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:25]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.96917784 0.34001338
		 0.98031539 0.34001338 0.98031539 0.42405576 0.96917784 0.42405576 0.92986047 0.48678038
		 0.92986047 0.47564286 0.93859029 0.47564286 0.93859029 0.48678038 0.98687059 0.047022186
		 0.99800813 0.047022186 0.99800813 0.13106453 0.98687059 0.13106453 0.67475528 0.80984646
		 0.72908711 0.80984646 0.72667086 0.89388889 0.67233908 0.89388889 0.73927641 0.80984646
		 0.79360831 0.80984646 0.7960245 0.89388889 0.7416926 0.89388889 0.96917784 0.29511842
		 0.98031539 0.30737484 0.67480344 0.77720791 0.69188714 0.7800355 0.73927641 0.80984646
		 0.75308257 0.79769671 0.98031539 0.46919972 0.96917784 0.46919972 0.70386982 0.93903273
		 0.69514012 0.93903273 0.98687059 0.0018782457 0.99800813 0.0018782457 0.7732234 0.93903273
		 0.7644937 0.93903273 0.76838183 0.78989935 0.77843118 0.77604675 0.79354203 0.76495147
		 0.71125263 0.79420042 0.72908711 0.80984646 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 7.23416901 0.5 -0.29500896 7.23416901 0.5
		 -0.5 7.23416901 -0.5 -0.29500896 7.23416901 -0.50000048 -0.5 5.68733549 0.4555285
		 -0.29500899 5.68733549 0.45552826 -0.5 8.065060616 0.080337048 -0.29500896 8.065060616 0.080336809
		 -0.29500896 8.065060616 -0.080337286 -0.5 8.065060616 -0.080337048 -0.29500896 5.68733549 -0.54447222
		 -0.5 5.68733549 -0.54447174 -0.29500902 5.39936399 -0.21622086 -0.29500902 5.1386528 0.14020896
		 -0.29500896 5.086609364 0.4546423 -0.5 4.86102533 0.45430946 -0.5 5.065238953 0.17618775
		 -0.5 5.32020092 -0.0087749958 -0.5 5.46371412 -0.29036331 -0.40889269 5.30105162 -0.042106073;
	setAttr -s 44 ".ed[0:43]"  0 1 0 2 3 0 0 2 0 1 3 0 2 11 0 3 10 0 4 0 0
		 5 1 0 4 5 1 5 10 1 11 4 1 0 6 0 1 7 0 6 7 0 3 8 0 7 8 0 2 9 0 9 8 0 6 9 0 15 4 0
		 14 5 0 18 4 1 4 17 1 16 4 1 13 5 1 5 12 1 10 11 0 12 10 0 13 12 0 14 13 0 15 14 0
		 16 15 0 17 16 0 18 17 0 11 18 0 10 19 0 11 19 0 12 19 0 13 19 0 14 19 0 15 19 0 16 19 0
		 17 19 0 18 19 0;
	setAttr -s 26 -ch 88 ".fc[0:25]" -type "polyFaces" 
		f 4 8 7 -1 -7
		mu 0 4 0 1 2 3
		f 4 13 15 -18 -19
		mu 0 4 4 5 6 7
		f 4 1 5 26 -5
		mu 0 4 8 9 10 11
		f 4 9 -6 -4 -8
		mu 0 4 12 13 14 15
		f 4 10 6 2 4
		mu 0 4 16 17 18 19
		f 4 30 20 -9 -20
		mu 0 4 20 21 1 0
		f 3 29 24 -21
		mu 0 3 22 23 12
		f 3 34 21 -11
		mu 0 3 24 25 17
		f 4 0 12 -14 -12
		mu 0 4 3 2 26 27
		f 4 3 14 -16 -13
		mu 0 4 15 14 28 29
		f 4 -2 16 17 -15
		mu 0 4 9 8 30 31
		f 4 -3 11 18 -17
		mu 0 4 19 18 32 33
		f 3 22 32 23
		mu 0 3 17 34 35
		f 3 -22 33 -23
		mu 0 3 17 25 34
		f 3 -24 31 19
		mu 0 3 17 35 36
		f 3 25 27 -10
		mu 0 3 12 37 38
		f 3 -25 28 -26
		mu 0 3 12 23 37
		f 3 -27 35 -37
		mu 0 3 39 40 41
		f 3 -28 37 -36
		mu 0 3 42 43 44
		f 3 -29 38 -38
		mu 0 3 45 46 47
		f 3 -30 39 -39
		mu 0 3 48 49 50
		f 3 -31 40 -40
		mu 0 3 51 52 53
		f 3 -32 41 -41
		mu 0 3 54 55 56
		f 3 -33 42 -42
		mu 0 3 57 58 59
		f 3 -34 43 -43
		mu 0 3 60 61 62
		f 3 -35 36 -44
		mu 0 3 63 64 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "VStickPiece15" -p "BrokenPieces";
	rename -uid "D137F408-41B1-0908-A3A4-6494C0B97BEF";
	setAttr ".t" -type "double3" 0.54788429065458077 0 -0.50973358243773847 ;
	setAttr ".r" -type "double3" 0 360.00000000000006 0 ;
	setAttr ".rp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
	setAttr ".rpt" -type "double3" -0.0016080285680215157 0 0.016191282341705911 ;
	setAttr ".sp" -type "double3" -0.39750447869300842 3.8311347961425781 -0.047653436660766602 ;
createNode mesh -n "VStickPieceShape15" -p "VStickPiece15";
	rename -uid "88BD38FB-4459-FD68-5C29-43AEF71C416A";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:24]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.98687059 0.13106453
		 0.99800813 0.13106453 0.99800813 0.33276618 0.98687059 0.33276618 0.73897886 0.60814488
		 0.76502317 0.6231423 0.75308257 0.79769671 0.73927641 0.80984646 0.96917784 0.16571043
		 0.98031539 0.17700388 0.98031539 0.30737484 0.96917784 0.29511842 0.67499578 0.646837
		 0.68558848 0.64036548 0.7027868 0.62760735 0.72938466 0.60814488 0.72908711 0.80984646
		 0.71125263 0.79420042 0.69188714 0.7800355 0.67480344 0.77720791 0.77843118 0.77604675
		 0.7843954 0.62501234 0.79335117 0.63554358 0.79354203 0.76495147 0.76838183 0.78989935
		 0.7843954 0.62501234 0.76502317 0.6231423 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1 0 0 1 0 0.5
		 1 0 0 1 0 0.5 1 0 0 1 0 0.5 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  -0.29500902 5.68733549 -0.54447222 -0.5 5.68733549 -0.54447174
		 -0.5 4.86102533 0.45430946 -0.29500896 5.086609364 0.4546423 -0.5 5.46371412 -0.29036331
		 -0.5 5.32020092 -0.0087749958 -0.5 5.065238953 0.17618752 -0.29500902 5.1386528 0.14020896
		 -0.29500905 5.39936399 -0.21622086 -0.29500902 1.9749341 -0.54994822 -0.5 1.9749341 -0.54994917
		 -0.29500896 2.68707848 0.4511025 -0.29500902 2.56796789 0.2561388 -0.29500902 2.33314896 -0.060404539
		 -0.5 2.47921824 0.45079565 -0.5 2.28538609 0.28596234 -0.5 2.25096703 -0.070592165
		 -0.4088929 5.30105257 -0.042106152 -0.39750454 2.31920433 0.02663815;
	setAttr -s 42 ".ed[0:41]"  0 9 0 1 10 0 0 1 0 1 4 0 4 5 0 5 6 0 6 2 0
		 2 3 0 3 7 0 7 8 0 8 0 0 14 2 0 11 3 0 16 4 1 6 15 1 15 5 1 5 16 1 9 10 0 11 12 0
		 12 13 0 13 9 0 14 11 0 15 14 0 16 15 0 10 16 0 0 17 0 1 17 0 4 17 0 5 17 0 6 17 0
		 2 17 0 3 17 0 7 17 0 8 17 0 9 18 0 10 18 0 11 18 0 12 18 0 13 18 0 14 18 0 15 18 0
		 16 18 0;
	setAttr -s 25 -ch 84 ".fc[0:24]" -type "polyFaces" 
		f 4 -3 0 17 -2
		mu 0 4 0 1 2 3
		f 4 24 13 -4 1
		mu 0 4 4 5 6 7
		f 4 21 12 -8 -12
		mu 0 4 8 9 10 11
		f 8 18 19 20 -1 -11 -10 -9 -13
		mu 0 8 12 13 14 15 16 17 18 19
		f 4 14 22 11 -7
		mu 0 4 20 21 22 23
		f 3 16 23 15
		mu 0 3 24 5 21
		f 3 -16 -15 -6
		mu 0 3 24 25 20
		f 3 -14 -17 -5
		mu 0 3 6 26 24
		f 3 2 26 -26
		mu 0 3 27 28 29
		f 3 3 27 -27
		mu 0 3 30 31 32
		f 3 4 28 -28
		mu 0 3 33 34 35
		f 3 5 29 -29
		mu 0 3 36 37 38
		f 3 6 30 -30
		mu 0 3 39 40 41
		f 3 7 31 -31
		mu 0 3 42 43 44
		f 3 8 32 -32
		mu 0 3 45 46 47
		f 3 9 33 -33
		mu 0 3 48 49 50
		f 3 10 25 -34
		mu 0 3 51 52 53
		f 3 -18 34 -36
		mu 0 3 54 55 56
		f 3 -19 36 -38
		mu 0 3 57 58 59
		f 3 -20 37 -39
		mu 0 3 60 61 62
		f 3 -21 38 -35
		mu 0 3 63 64 65
		f 3 -22 39 -37
		mu 0 3 66 67 68
		f 3 -23 40 -40
		mu 0 3 69 70 71
		f 3 -24 41 -41
		mu 0 3 72 73 74
		f 3 -25 35 -42
		mu 0 3 75 76 77;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "ED1D32F1-4D12-C88E-2310-43976F359FE5";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "668504BA-414F-9355-3BC3-74B3A127B4AA";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A83072A9-45B6-A4B1-2A05-A690FD9A1157";
createNode displayLayerManager -n "layerManager";
	rename -uid "EEF07BD2-491E-22E9-1A15-94B5FFB837A2";
createNode displayLayer -n "defaultLayer";
	rename -uid "835462E5-4C2F-DB84-8095-90AC75567E85";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "26642623-48E3-5A53-EC9D-CAAA2ED4EC5E";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "265E7FE2-4F5F-A581-8815-8C9A22B465F6";
	setAttr ".g" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "D45B35BA-4868-FB8C-FE4E-788A2D90A6E7";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.49640432359239489 0 -4.9446270698518244 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098899841 7.234169 -4.9446273 ;
	setAttr ".rs" 38070;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0035956764076051084 7.2341690063476563 -5.4446270698518244 ;
	setAttr ".cbx" -type "double3" 0.20139536620637805 7.2341690063476563 -4.4446270698518244 ;
	setAttr ".raf" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "F03F5081-45BD-EBDC-20C4-F98C67B86840";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.49640432359239489 0 -3.8139700522466757 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098899841 7.234169 -3.8139701 ;
	setAttr ".rs" 32889;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.0035956764076051084 7.2341690063476563 -4.3139700522466757 ;
	setAttr ".cbx" -type "double3" 0.20139536620637805 7.2341690063476563 -3.3139700522466757 ;
	setAttr ".raf" no;
createNode polyCube -n "polyCube2";
	rename -uid "D90E6C6F-46E9-DBC9-8F7A-4E8E3618CF1B";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit3";
	rename -uid "78990500-43B0-1947-0041-978F4F261223";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "5C672414-46D1-F772-F810-CF9345184289";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483638 -2147483637 -2147483635 -2147483636 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "59CF4A12-4BC2-B319-BA97-01B921052424";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0 0.029798687 0 0 0.029798687
		 0 0 0.029798687 0 0 0.029798687 0 0 -5.53747606 0 0 -5.53747606 0 0 -5.53747606 0
		 0 -5.53747606;
createNode polySplit -n "polySplit5";
	rename -uid "C2949805-4DE3-E4DC-D90F-BD9DD3E9AB74";
	setAttr -s 5 ".e[0:4]"  0.69999999 0.69999999 0.30000001 0.30000001
		 0.69999999;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "25C75080-4C99-C43F-19C7-FE8CF88389A1";
	setAttr -s 5 ".e[0:4]"  0.40000001 0.40000001 0.60000002 0.60000002
		 0.40000001;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483634 -2147483633 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyUnite -n "polyUnite1";
	rename -uid "04D72655-40B4-DFAF-0ECC-26BEF9455F3A";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
createNode groupParts -n "groupParts1";
	rename -uid "E8711037-492A-0B62-38EB-6A8B17C6BDA2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:135]";
createNode groupId -n "groupId17";
	rename -uid "732406D5-466C-80F9-5A44-DA85B361A580";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	rename -uid "F93BACA0-4EEE-265A-5F2A-F59B09662EA6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	rename -uid "161AA709-4BDD-8608-0C08-3FA956D9FDF2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "092AEEC7-4EA6-0043-D2D4-6C9BEE9370B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "0C698F2C-46C1-1F36-C356-2686067580F5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "297857A6-4526-B63D-EA08-478AADA5646A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "0F0575B8-4DE7-19FE-B9ED-D5BFF37687EA";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "A1622EC4-4DB6-BB2E-427C-74A39C0C2BD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "55CC4346-450A-6B3D-D0CB-2CA0DED3DC28";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "B7FF8046-4F70-D37A-4C95-8FAE3A33940B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "85526DE3-4BD0-7B9E-E2EC-95BBD18F86BB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "88BE6415-4508-DAEE-27DC-0D9D7F55DCC7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "742E0393-411D-825A-DBD9-8E8A75C5124D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "136D5113-4333-5856-0D11-62BAD3618C37";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "6EAF644C-4B87-7D02-AA55-C29D8722BBD8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId1";
	rename -uid "B5A23393-4254-D2BA-FB73-518B6F8CDCF8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "E3573631-4289-FA5F-8321-55979EC91DB0";
	setAttr ".ihi" 0;
createNode polyAutoProj -n "polyAutoProj1";
	rename -uid "5F1B14B8-466F-F1D3-B4BC-E88C0B1D8CA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	rename -uid "4E73953D-4D64-8DF1-44E2-8E8AC9DE278D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 1.7012944609234166 0.57231152679056763 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak4";
	rename -uid "BF3FE00D-4D53-08B4-AEDB-0B9E77CE8FDC";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 -0.062867731 0 0 -0.062867731
		 0 0 -0.062867701 0 0 -0.062867701 0;
createNode polyAutoProj -n "polyAutoProj3";
	rename -uid "45397DEB-492B-6379-25AC-A3B2FB4C4779";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "55A5538E-4EB3-F781-E264-1EB48CD49749";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0 0.10614043 0 0 0.10614043
		 0 0 0.10614049 0 0 0.10614049 0;
createNode polyAutoProj -n "polyAutoProj4";
	rename -uid "4C5BD659-4074-EE11-D2E3-4E9065ED8C60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.49640432359239489 0 0.64897077134976033 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj5";
	rename -uid "66FD2EA6-4B85-54BC-834E-948335E50542";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.49640432359239489 0 -4.9446270698518244 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "A35967F3-418C-6C9D-AAC1-31A25907E4C3";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.83089179 -0.41966301 0
		 0.83089179 -0.41966301 0 0.83089179 0.41966307 0 0.83089179 0.41966307;
createNode polyAutoProj -n "polyAutoProj6";
	rename -uid "CCFC580C-48EE-606F-7273-EE854EAF8044";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".s" -type "double3" 8.5650606155395508 8.5650606155395508 8.5650606155395508 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "3AB6F215-4902-9E7F-B5F9-7FBB9381B738";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[16:19]" -type "float3"  0 0.83089179 -0.41966301 0
		 0.83089179 -0.41966301 0 0.83089179 0.41966301 0 0.83089179 0.41966301;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "051521E3-4F53-9E3D-5351-3AA2DA270EA9";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" -0.23928879 -0.31850994 -0.15848505
		 -0.31850994 -0.16356502 -0.12747234 -0.24436878 -0.12747234 -0.16356502 -0.53077406
		 -0.24436878 -0.53077406 -0.16356502 -0.00011381055 -0.24436878 -0.00011381055 -0.33088377
		 -0.40341562 -0.25008005 -0.40341562 -0.24500008 -0.21237791 -0.32580385 -0.21237791
		 -0.25008005 -0.53077406 -0.33088377 -0.53077406 -0.25008005 -0.00011381055 -0.33088377
		 -0.00011381055 9.4167517e-05 -0.21237794 -0.080709569 -0.21237794 -0.080709569 -0.40341553
		 9.4167517e-05 -0.40341553 9.4167517e-05 -0.00011384156 -0.080709569 -0.00011384156
		 -0.080709569 -0.53077406 9.4167517e-05 -0.53077406 -0.079288244 -0.12747228 -0.16009195
		 -0.12747228 -0.16009195 -0.31851 -0.079288244 -0.31851 -0.079288244 -0.00011384156
		 -0.16009195 -0.00011384156 -0.16009195 -0.53077406 -0.079288244 -0.53077406 -0.29023203
		 0.47561672 -0.37103575 0.47561672 -0.37103575 0.394813 -0.29023203 0.394813 -0.36075997
		 0.32005122 -0.4415637 0.32005122 -0.4415637 0.23924737 -0.36075997 0.23924737;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "ACB4B02F-4038-E3D0-EB28-159B11A1594A";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk[0:39]" -type "float2" 0.066558637 -0.15734623 0.14736225
		 -0.15734623 0.15593886 0.0018519248 0.075135142 0.0018519248 0.075135142 -0.38022345
		 0.15593886 -0.38022345 0.15593886 -0.5288083 0.075135142 -0.5288083 0.064601339 -0.5288083
		 0.056024812 -0.36961013 -0.024778923 -0.36961013 -0.016202368 -0.5288083 0.064601339
		 -0.14673293 -0.016202368 -0.14673293 0.064601339 0.0018519388 -0.016202368 0.0018519388
		 0.31864285 -0.3696101 0.23783912 -0.3696101 0.23783912 -0.5288083 0.31864285 -0.5288083
		 0.31864285 -0.1467329 0.23783912 -0.1467329 0.31864285 0.0018519592 0.23783912 0.0018519592
		 0.23720212 0.0018519452 0.15639839 0.0018519452 0.15639839 -0.15734622 0.23720212
		 -0.15734622 0.15639839 -0.38022345 0.23720212 -0.38022345 0.15639839 -0.5288083 0.23720212
		 -0.5288083 -0.22921522 0.62510961 -0.38087881 0.5542497 -0.31001905 0.40258622 -0.15835544
		 0.47344607 -0.39527574 0.47347558 -0.47607949 0.47347558 -0.47607949 0.39267176 -0.39527574
		 0.39267176;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "20CBB76A-4DE9-0550-2954-0CAA9F0B76D2";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.61113226 -0.38149294 0.5491758
		 -0.38149294 0.55193114 -0.47732916 0.61388749 -0.47732916 0.61079288 -0.15148607
		 0.54883659 -0.15148607 0.57793194 -0.52880824 0.58788675 -0.52880824 0.61294591 0.0018519139
		 0.55098951 0.0018519139 0.54809678 -0.38149294 0.48614043 -0.38149294 0.48338515
		 -0.47732916 0.54534149 -0.47732916 0.54843611 -0.15148607 0.48647976 -0.15148607
		 0.50938594 -0.52880824 0.51934069 -0.52880824 0.54628319 0.0018519139 0.48432678
		 0.0018519139 0.45225129 0.4609504 0.45225129 0.47365084 0.44229656 0.47365084 0.44229656
		 0.4609504 -0.10676241 0.47168514 -0.1194629 0.47168514 -0.1194629 0.40972877 -0.10676241
		 0.40972877 0.64015049 -0.38149294 0.62745005 -0.38149294 0.62745005 -0.47732916 0.64015049
		 -0.47732916 0.64015049 -0.15148607 0.62745005 -0.15148607 0.62745005 -0.52880824
		 0.64015049 -0.52880824 0.64015049 0.0018519139 0.62745005 0.0018519139 0.62692863
		 -0.051592879 0.61422819 -0.051592879 0.61422819 -0.14742911 0.62692863 -0.14742911
		 0.62692863 -0.00011378621 0.61422819 -0.00011378621 0.61422819 -0.37743598 0.62692863
		 -0.37743598 0.61422819 -0.530774 0.62692863 -0.530774;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "DB9BA2B0-4EA7-3879-B5B1-0AA7D45C0570";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.77418053 -0.38149291 0.71222419
		 -0.38149291 0.71497953 -0.47732913 0.77693588 -0.47732913 0.77384126 -0.15148605
		 0.71188492 -0.15148605 0.74098027 -0.52880824 0.75093508 -0.52880824 0.77182519 0.0018519296
		 0.70986885 0.0018519296 0.70726842 -0.38149291 0.64531201 -0.38149291 0.64255673
		 -0.47732913 0.70451307 -0.47732913 0.70760763 -0.15148605 0.6456514 -0.15148605 0.66855752
		 -0.52880824 0.67851228 -0.52880824 0.70962369 0.0018519296 0.64766735 0.0018519296
		 0.49947774 0.4609504 0.49947774 0.47365084 0.48952296 0.47365084 0.48952296 0.4609504
		 0.49487567 0.4716852 0.4821752 0.4716852 0.4821752 0.4097288 0.49487567 0.4097288
		 0.80329734 -0.38149291 0.79059684 -0.38149291 0.79059684 -0.47732913 0.80329734 -0.47732913
		 0.80329734 -0.15148605 0.79059684 -0.15148605 0.79059684 -0.52880824 0.80329734 -0.52880824
		 0.80329734 0.0018519296 0.79059684 0.0018519296 0.79002601 -0.051592879 0.77732551
		 -0.051592879 0.77732551 -0.14742911 0.79002601 -0.14742911 0.79002601 -0.00011378621
		 0.77732551 -0.00011378621 0.77732551 -0.37743598 0.79002601 -0.37743598 0.77732551
		 -0.530774 0.79002601 -0.530774;
createNode polyTweakUV -n "polyTweakUV5";
	rename -uid "6EE182E3-4788-A4B5-C2CE-5E8FF04CF7E9";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.60708654 0.088340163 0.54513013
		 0.088340163 0.54788548 -0.007496011 0.60984182 -0.007496011 0.60674721 0.31834707
		 0.54479086 0.31834707 0.57388622 -0.058975235 0.58384103 -0.058975235 0.60473114
		 0.47168505 0.5427748 0.47168505 0.54017431 0.088340163 0.4782179 0.088340163 0.47546262
		 -0.007496011 0.53741896 -0.007496011 0.54051358 0.31834707 0.47855723 0.31834707
		 0.50146341 -0.058975235 0.51141816 -0.058975235 0.54252964 0.47168505 0.48057336
		 0.47168505 0.57221282 0.4609504 0.57221282 0.47365084 0.56225806 0.47365084 0.56225806
		 0.4609504 0.66000539 0.4716852 0.64730495 0.4716852 0.64730495 0.40972883 0.66000539
		 0.40972883 0.9684267 -0.38149291 0.95572621 -0.38149291 0.95572621 -0.47732913 0.9684267
		 -0.47732913 0.9684267 -0.15148605 0.95572621 -0.15148605 0.95572621 -0.52880824 0.9684267
		 -0.52880824 0.9684267 0.0018519296 0.95572621 0.0018519296 0.95515579 -0.051592879
		 0.94245529 -0.051592879 0.94245529 -0.14742911 0.95515579 -0.14742911 0.95515579
		 -0.00011378621 0.94245529 -0.00011378621 0.94245529 -0.37743598 0.95515579 -0.37743598
		 0.94245529 -0.530774 0.95515579 -0.530774;
createNode polyTweakUV -n "polyTweakUV9";
	rename -uid "468FD609-458D-E211-9119-28BCA8A26591";
	setAttr ".uopa" yes;
	setAttr -s 368 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.18364745 -0.11401784 0.18366763 -0.11401784
		 0.18366636 -0.11394898 0.18364619 -0.11394898 0.18366636 -0.11409435 0.18364619 -0.11409435
		 0.18366636 -0.11390307 0.18364619 -0.11390307 -0.3967877 -0.014389908 -0.39676756
		 -0.014389908 -0.39676628 -0.014321104 -0.39678645 -0.014321044 -0.39676756 -0.014435817
		 -0.3967877 -0.014435817 -0.39676756 -0.014244558 -0.3967877 -0.014244558 0.21667178
		 -0.0070560263 0.21669196 -0.0070560263 0.2166941 -0.0069986098 0.21667393 -0.0069986098
		 0.21667393 -0.0071363677 0.2166941 -0.0071363677 0.2166941 -0.0071898685 0.21667393
		 -0.0071898685 -0.17174263 5.8105299e-05 -0.17174478 0.00011549189 -0.17176494 0.00011549189
		 -0.17176281 5.8105299e-05 -0.17174263 0.0001958331 -0.17176281 0.0001958331 -0.17174263
		 0.00024939387 -0.17176281 0.00024939387 -0.0001319757 0.00032051443 -0.00016110325
		 0.00032051443 -0.00015980788 0.00027545894 -0.00013068036 0.00027545894 -0.00013213522
		 0.0004286475 -0.00016126274 0.0004286475 -0.00014758414 0.00025125709 -0.0001429041
		 0.00025125709 -0.00013112304 0.0005007346 -0.00016025059 0.0005007346 -0.0018432112
		 0.00032051443 -0.0018723388 0.00032051443 -0.001873649 0.00027545894 -0.0018445066
		 0.00027545894 -0.0018430518 0.0004286475 -0.0018721941 0.0004286475 -0.0018614252
		 0.00025125709 -0.0018567303 0.00025125709 -0.0018440639 0.0005007346 -0.0018731914
		 0.0005007346 -0.0016911327 0.00032051443 -0.0017202602 0.00032051443 -0.0017189649
		 0.00027545894 -0.0016898373 0.00027545894 -0.0016912922 0.0004286475 -0.0017204197
		 0.0004286475 -0.0017067412 0.00025125709 -0.0017020612 0.00025125709 -0.00169224
		 0.0005007346 -0.0017213676 0.0005007346 -0.0015889409 0.00032051443 -0.0016180683
		 0.00032051443 -0.0016193637 0.00027545894 -0.0015902362 0.00027545894 -0.0015887814
		 0.0004286475 -0.0016179088 0.0004286475 -0.0016071399 0.00025125709 -0.0016024599
		 0.00025125709 -0.0015878335 0.0005007346 -0.001616961 0.0005007346 -0.0050519509
		 0.00032051443 -0.0050810543 0.00032051443 -0.0050797602 0.00027545894 -0.0050506569
		 0.00027545894 -0.0050521102 0.0004286475 -0.005081214 0.0004286475 -0.0050675464
		 0.00025125709 -0.0050628702 0.00025125709 -0.0050530573 0.0005007346 -0.0050821607
		 0.0005007346 -0.0049496698 0.00032051443 -0.0049787136 0.00032051443 -0.0049800677
		 0.00027545894 -0.0049509644 0.00027545894 -0.0049495106 0.0004286475 -0.0049785543
		 0.0004286475 -0.0049678539 0.00025125709 -0.0049631777 0.00025125709 -0.0049485634
		 0.0005007346 -0.0049776668 0.0005007346 -0.004793101 0.00032051443 -0.0048222286
		 0.00032051443 -0.0048209331 0.00027545894 -0.0047918055 0.00027545894 -0.0047932607
		 0.0004286475 -0.0048223883 0.0004286475 -0.0048087095 0.00025125709 -0.0048040296
		 0.00025125709 -0.0047922484 0.0005007346 -0.0048213759 0.0005007346 -0.0083155707
		 0.00032051443 -0.0083446978 0.00032051443 -0.0083459932 0.00027545894 -0.0083168661
		 0.00027545894 -0.0083154114 0.0004286475 -0.0083445385 0.0004286475 -0.0083337696
		 0.00025125709 -0.0083290897 0.00025125709 -0.0083164228 0.0005007346 -0.0083455509
		 0.0005007346 -0.013597968 0.00032051443 -0.013627094 0.00032051443 -0.013625799 0.00027545894
		 -0.013596673 0.00027545894 -0.013598127 0.0004286475 -0.013627253 0.0004286475 -0.013613575
		 0.00025125709 -0.013608896 0.00025125709 -0.013596673 0.0005007346 -0.013625799 0.0005007346
		 -0.015308295 0.00032051443 -0.015337421 0.00032051443 -0.015338716 0.00027545894
		 -0.015309591 0.00027545894 -0.015308135 0.0004286475 -0.015337261 0.0004286475 -0.015326493
		 0.00025125709 -0.015321814 0.00025125709 -0.015309591 0.0005007346 -0.015338716 0.0005007346
		 -0.82688433 6.9172034e-05 -0.82691348 6.9172034e-05 -0.82691216 2.4116556e-05 -0.82688302
		 2.4116556e-05 -0.82688165 0.00017730513 -0.82691073 0.00017730513 -0.82689995 -8.5287624e-08
		 -0.8268953 -8.5287624e-08 -0.82688302 0.00024939387 -0.82691216 0.00024939387 -0.69079787
		 6.9172034e-05 -0.69082701 6.9172034e-05 -0.69082832 2.4116556e-05 -0.69079918 2.4116556e-05
		 -0.69080061 0.00017730513 -0.69082975 0.00017730513 -0.6908161 -8.5287624e-08 -0.6908114
		 -8.5287624e-08 -0.69079918 0.00024939387 -0.69082832 0.00024939387 0.11094357 -0.49993652
		 0.11093326 -0.49993652 0.11093326 -0.50000536 0.11094357 -0.50000536 0.11094357 -0.49986002
		 0.11093326 -0.49986002 0.11093326 -0.50005132 0.11094357 -0.50005132 0.16251397 -0.49990675
		 0.16250366 -0.49990675 0.16250366 -0.49997562 0.16251397 -0.49997562 0.16251397 -0.49986082
		 0.16250366 -0.49986082 0.16250366 -0.50005215 0.16251397 -0.50005215 -0.18574098
		 -0.032500509 -0.18575129 -0.032500509 -0.18575129 -0.032557897 -0.18574098 -0.032557897
		 -0.18574098 -0.03242017 -0.18575129 -0.03242017 -0.18574098 -0.032366637 -0.18575129
		 -0.032366637 0.012602127 -0.030554526 0.012591816 -0.030554526 0.012591816 -0.030611912
		 0.012602127 -0.030611912 0.012591816 -0.030692253 0.012602127 -0.030692253 0.012591816
		 -0.030745814 0.012602127 -0.030745814 0.4984147 0.0020553868 0.4984147 0.0020613575
		 0.49841002 0.0020613575 0.49841002 0.0020553868 0.39312923 -0.017869856 0.39312327
		 -0.017869856 0.39312327 -0.017899014 0.39312923 -0.017899014 -0.20232369 0.0020555654
		 -0.20232369 0.0020615363 -0.20232837 0.0020615363 -0.20232837 0.0020555654 0.29654217
		 -0.016058577 0.29653624 -0.016058577 0.29653624 -0.016087705 0.29654217 -0.016087705
		 0.32693946 -0.0033805592 0.32693925 -0.0033745931 0.32693458 -0.0033747237 0.32693484
		 -0.0033806898 0.027559081 -0.017870873 0.027553115 -0.017870631 0.027551932 -0.017899765
		 0.027557928 -0.017900007 -0.020616766 0.0020555058 -0.020616766 0.0020614767 -0.020621447
		 0.0020614767 -0.020621447 0.0020555058 -0.19506116 -0.014246584 -0.19506714 -0.014246584
		 -0.19506714 -0.014275681 -0.19506116 -0.014275681 0.16811603 0.00024928246 0.16811614
		 0.00024331192 0.1681208 0.00024342332 0.16812073 0.00024933429 0.21247053 -0.016087823
		 0.21247648 -0.016087888 0.21247676 -0.016058763 0.2124708 -0.016058696 0.34228969
		 0.0020555058 0.34228969 0.0020614767 0.34228501 0.0020614767 0.34228501 0.0020555058
		 -0.0035394107 -0.014246584 -0.0035453816 -0.014246584 -0.0035453816 -0.014275681
		 -0.0035394107 -0.014275681 0.10239033 0.0020613575 0.10238001 0.0020613575 0.10238001
		 0.0020411862 0.10239033 0.0020411862 0.30616999 0.0002493939 0.30615973 0.0002493939
		 0.30615973 0.00022922239 0.30616999 0.00022922239 0.24901892 0.0020613575 0.24900867
		 0.0020613575 0.24900867 0.0020412456 0.24901892 0.0020412456 0.40387461 0.003873917
		 0.40386435 0.003873917 0.40386435 0.0038537455 0.40387461 0.0038537455 -3.5484834e-06
		 0.00032051443 -9.520184e-06 0.00032051443;
	setAttr ".uvtk[250:367]" -9.520184e-06 0.00027545894 -3.5484834e-06 0.00027545894
		 -3.5484834e-06 0.0004286475 -9.520184e-06 0.0004286475 -9.520184e-06 0.00025125709
		 -3.5484834e-06 0.00025125709 -3.5484834e-06 0.0005007346 -9.520184e-06 0.0005007346
		 -0.00015757512 0.00047649717 -0.00016354414 0.00047649717 -0.00016354414 0.00043143425
		 -0.00015757512 0.00043143425 -0.00015757512 0.00050069741 -0.00016354414 0.00050069741
		 -0.00016354414 0.00032331605 -0.00015757512 0.00032331605 -0.00016354414 0.00025122726
		 -0.00015757512 0.00025122726 -0.0017435934 0.00032051443 -0.0017495643 0.00032051443
		 -0.0017495643 0.00027545894 -0.0017435934 0.00027545894 -0.0017435934 0.0004286475
		 -0.0017495643 0.0004286475 -0.0017495643 0.00025125709 -0.0017435934 0.00025125709
		 -0.0017435934 0.0005007346 -0.0017495643 0.0005007346 -0.0017167378 0.00047649717
		 -0.0017227086 0.00047649717 -0.0017227086 0.00043143425 -0.0017167378 0.00043143425
		 -0.0017167378 0.00050069741 -0.0017227086 0.00050069741 -0.0017227086 0.00032331605
		 -0.0017167378 0.00032331605 -0.0017227086 0.00025122726 -0.0017167378 0.00025122726
		 -0.0014861843 0.00032051443 -0.0014921502 0.00032051443 -0.0014922029 0.00027545894
		 -0.0014862369 0.00027545894 -0.0014861778 0.0004286475 -0.0014921437 0.0004286475
		 -0.0014917062 0.00025125709 -0.0014857402 0.00025125709 -0.0014861393 0.0005007346
		 -0.0014921052 0.0005007346 -0.0014562877 0.00047649717 -0.0014622536 0.00047649717
		 -0.001462201 0.00043143425 -0.0014562351 0.00043143425 -0.0014567843 0.00050069741
		 -0.0014627504 0.00050069741 -0.0014621945 0.00032331605 -0.0014562286 0.00032331605
		 -0.0014621561 0.00025122726 -0.00145619 0.00025122726 -0.0048461724 0.00032051443
		 -0.0048521431 0.00032051443 -0.0048521431 0.00027545894 -0.0048461724 0.00027545894
		 -0.0048461724 0.0004286475 -0.0048521431 0.0004286475 -0.0048521431 0.00025125709
		 -0.0048461724 0.00025125709 -0.0048461724 0.0005007346 -0.0048521431 0.0005007346
		 -0.004818989 0.00047649717 -0.0048249597 0.00047649717 -0.0048249597 0.00043143425
		 -0.004818989 0.00043143425 -0.004818989 0.00050069741 -0.0048249597 0.00050069741
		 -0.0048249597 0.00032331605 -0.004818989 0.00032331605 -0.0048249597 0.00025122726
		 -0.004818989 0.00025122726 -0.010032859 0.00043143425 -0.010026888 0.00043143425
		 -0.010026874 0.00047649717 -0.010032844 0.00047649717 -0.010032861 0.00032331605
		 -0.01002689 0.00032331605 -0.010027009 0.00050069741 -0.01003298 0.00050069741 -0.010032844
		 0.00025122726 -0.010026874 0.00025122726 -0.011817819 0.00027545894 -0.011811849
		 0.00027545894 -0.011811864 0.00032051443 -0.011817834 0.00032051443 -0.011817684
		 0.00025125709 -0.011811714 0.00025125709 -0.011811865 0.0004286475 -0.011817836 0.0004286475
		 -0.011811849 0.0005007346 -0.011817819 0.0005007346 -0.017019657 0.00032051443 -0.017025629
		 0.00032051443 -0.017025629 0.00027545894 -0.017019657 0.00027545894 -0.017019657
		 0.0004286475 -0.017025629 0.0004286475 -0.017025629 0.00025125709 -0.017019657 0.00025125709
		 -0.017019657 0.0005007346 -0.017025629 0.0005007346 -0.018804498 0.00047649717 -0.01881047
		 0.00047649717 -0.01881047 0.00043143425 -0.018804498 0.00043143425 -0.018804498 0.00050069741
		 -0.01881047 0.00050069741 -0.01881047 0.00032331605 -0.018804498 0.00032331605 -0.01881047
		 0.00025122726 -0.018804498 0.00025122726;
createNode polySplit -n "polySplit7";
	rename -uid "B53A7A90-4A12-3D0A-9E48-03979615E012";
	setAttr -s 5 ".v[0:4]" -type "float3"  -0.5 5.4637141 -0.29036301 
		-0.5 5.3202009 -0.0087750005 -0.5 5.065239 0.17618801 -0.29500899 5.1386528 0.140209 
		-0.29500899 5.399364 -0.216221;
	setAttr -s 9 ".e[0:8]"  0 9 9 9 0.77741897 0.838184 7 7 1;
	setAttr -s 9 ".d[0:8]"  -2147483629 0 1 2 -2147483628 -2147483627 
		3 4 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "D8D42B8D-4033-D82D-FEE7-6BB27C47846C";
	setAttr -s 4 ".e[0:3]"  1 1 1 1;
	setAttr -s 4 ".d[0:3]"  -2147483610 -2147483629 -2147483609 -2147483608;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "BEBF0F9A-4557-59A4-22D1-1191B62A26F1";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483608 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "3775FA8B-4627-C0A6-C0AE-B4BCDAB50A16";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483605 -2147483631 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "BBFE7C36-4A95-3556-5D99-C8A59538B2F5";
	setAttr -s 5 ".v[0:4]" -type "float3"  0.5 -0.19212601 -2.5796609 
		0.5 0.23711599 -2.796675 0.151701 0.45504299 -2.7706809 -0.5 0.24536601 -2.8781321 
		-0.5 -0.19241101 -2.4979911;
	setAttr -s 9 ".e[0:8]"  1 4 4 0.28755099 1 0.30162001 5 5 1;
	setAttr -s 9 ".d[0:8]"  -2147483627 0 1 -2147483635 2 -2147483636 
		3 4 -2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "850F8E10-499E-3D85-53DD-E9B2318A64F3";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483612 -2147483636 -2147483613;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "3EED56AA-4B54-42BE-F278-0590A0B9B274";
	setAttr -s 2 ".e[0:1]"  0.253189 0;
	setAttr -s 2 ".d[0:1]"  -2147483614 -2147483636;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "4D317F66-4AAF-BD62-0F87-4EA654694F81";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483618 -2147483635 -2147483617;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "EEAFD6AF-477D-6225-E985-2C9AA4E5C5DC";
	setAttr -s 3 ".e[0:2]"  0 0 0;
	setAttr -s 3 ".d[0:2]"  -2147483617 -2147483627 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "AB3278E1-4F8E-7011-1662-DC97FEB25235";
	setAttr -s 4 ".e[0:3]"  0 0 0 0;
	setAttr -s 4 ".d[0:3]"  -2147483621 -2147483612 -2147483628 -2147483611;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "DA1BB061-4756-F7E7-90D9-4ABE04F9F55F";
	setAttr -s 6 ".v[0:5]" -type "float3"  -0.5 -0.18681701 -3.731132 
		-0.5 0.074630998 -3.765934 -0.5 0.33485901 -3.608629 -0.029616 0.58184701 -3.435971 
		0.5 0.177918 -3.3252821 0.5 -0.107387 -3.725487;
	setAttr -s 10 ".e[0:9]"  0 9 9 9 0.71286303 6 0.71817797 7 7 1;
	setAttr -s 10 ".d[0:9]"  -2147483629 0 1 2 -2147483628 3 
		-2147483627 4 5 -2147483631;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "BD529C20-4CC2-A5C4-60C1-5AB2477AEC92";
	setAttr -s 10 ".v[0:9]" -type "float3"  0.5 -0.20742799 -1.613878 
		0.5 -0.20629799 -2.0271969 0.5 0.030112 -2.0675941 0.5 0.294866 -1.938643 0.053897001 
		0.52135903 -1.864086 -0.177411 0.525006 -1.95886 -0.5 0.248943 -1.840048 -0.5 0.183599 
		-1.598949 -0.5 -0.0065319999 -1.6619951 -0.5 -0.11917 -1.471738;
	setAttr -s 14 ".e[0:13]"  1 16 16 16 16 0.333994 15 15 0.30063301 14
		 14 14 14 0;
	setAttr -s 14 ".d[0:13]"  -2147483634 0 1 2 3 -2147483627 
		4 5 -2147483628 6 7 8 9 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	rename -uid "8555CDFD-4A83-1953-768E-85BE82C8FC9B";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483596 -2147483628 -2147483597;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit20";
	rename -uid "E581591E-4EDA-DB57-C03D-A0905912389D";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483598 -2147483628 -2147483599;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	rename -uid "FEFF73B2-47BF-8B52-E6CF-A0A6E55B2700";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483607 -2147483627 -2147483606;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit22";
	rename -uid "9FCBAA62-4B55-8AAA-C7D7-2987A3FC0888";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483605 -2147483627 -2147483604;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	rename -uid "2E3F180D-4B3A-1788-8D69-26B70756F5D2";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483611 -2147483631 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit24";
	rename -uid "460AAA14-4D4F-8904-864F-AEB536C42294";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483618 -2147483633 -2147483617;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	rename -uid "AB365F91-453D-9E61-FC35-30A25A2F6BC8";
	setAttr -s 3 ".e[0:2]"  1 1 0;
	setAttr -s 3 ".d[0:2]"  -2147483616 -2147483629 -2147483616;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	rename -uid "8A813981-4041-8611-9808-1BAB9B05E7F8";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483614 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	rename -uid "FAE10626-4C65-1612-FC19-38A8A6E407A6";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483601 -2147483628 -2147483602;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitEdge -n "polySplitEdge1";
	rename -uid "72AE7D92-432A-C339-AB58-CCAB1D6AFAEC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[18]" "e[26]" "e[30:38]" "e[41:53]";
createNode polySeparate -n "polySeparate1";
	rename -uid "38104481-4B67-41C5-4F67-F3A84D3C46AB";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 2 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId18";
	rename -uid "E4468017-44CB-A52F-2CE3-CD8E2C68C225";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4F9B8A3A-4C87-6C73-6470-27B42ECCA1A3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:35]";
createNode groupId -n "groupId19";
	rename -uid "71357E02-470C-E53E-BDA0-64ADFD2FA0E7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId20";
	rename -uid "D1A45E54-43DB-E38E-296E-158757D666C3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "1935EB84-48A9-BD7A-945E-489CF6D62931";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 4 "f[0]" "f[1]" "f[2]" "f[3]";
createNode groupId -n "groupId21";
	rename -uid "80441D38-451B-C3AC-B7B2-6AB07AC5AA67";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "6A3A2B6F-4D79-AC39-01D6-30AC0440D91E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode polySeparate -n "polySeparate2";
	rename -uid "A4897092-48C1-6667-5388-5CBAB3F1664C";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId22";
	rename -uid "CDA39092-4D52-9C4A-5283-8799F891DC8E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "20DDD5B6-43C3-DE25-317D-D6A41E12CB52";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 18 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]";
createNode groupId -n "groupId23";
	rename -uid "DB98A586-4F8E-44BE-B4B1-8AB4C2464E79";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "BB2FCD49-443B-1300-CFA8-04A02E93396F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 14 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]";
createNode polySplit -n "polySplit28";
	rename -uid "53A41046-47A3-3E2C-2323-198FFEE9A52C";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483608 -2147483622;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitEdge -n "polySplitEdge2";
	rename -uid "0E43E237-4530-E77B-4E95-7FB4222C6E75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:1]" "e[4:5]" "e[18]" "e[30:37]" "e[40]";
createNode polySeparate -n "polySeparate3";
	rename -uid "DF85D28F-4C26-DFF8-A1C0-D4BB41BDFE98";
	setAttr ".ic" 3;
	setAttr ".rs" -type "Int32Array" 1 1 ;
	setAttr -s 2 ".out";
createNode groupId -n "groupId24";
	rename -uid "4C1CE132-4FCD-DDDD-029C-C49EB4286275";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "4D809C7E-4FF3-842D-6242-058F97BB750F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:27]";
createNode groupId -n "groupId25";
	rename -uid "C75455F3-4448-0CC4-B379-F39DB2C8557D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "A23A0929-4D43-379C-3ED4-5B90B6CF7012";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
	setAttr ".gi" 26;
createNode groupId -n "groupId27";
	rename -uid "199FE2E3-44DB-836B-1960-C09596EB3A55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "AE897710-4126-E9E3-1A7E-038FBD19FD9B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:15]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "378DA6AF-40B0-BFBF-AF7D-F9BCAE35D27D";
	setAttr ".dc" -type "componentList" 1 "f[0]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "95E43476-40B5-26B2-0F14-21B0F144A24F";
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
createNode groupParts -n "groupParts10";
	rename -uid "E31DCE8F-4CA8-6553-F4EA-ADBEFAF1FE35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11:12]";
createNode groupId -n "groupId28";
	rename -uid "7BEBBD6F-4310-F089-E373-158EFF381B5C";
	setAttr ".ihi" 0;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "25085AAF-42F6-E764-3884-E4859EFC3DBE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18:27]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 1.7012944609234166 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 1.664323 -1.91531 ;
	setAttr ".rs" 50674;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 1.3114957862427772 -2.3058205780830896 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 2.0171502284313005 -1.5247994599190271 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "D1EC8E82-49C7-D4DC-6DC6-808A44E26E47";
	setAttr ".ics" -type "componentList" 1 "vtx[16:25]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 1.7012944609234166 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak11";
	rename -uid "F8E55902-423A-4FF6-E18A-08BF95D5A2B3";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[16]" -type "float3" -0.48615912 -0.37582335 0.16842532 ;
	setAttr ".tk[17]" -type "float3" -0.13786007 -0.37565646 0.16216159 ;
	setAttr ".tk[18]" -type "float3" 0.027143426 -0.37592253 0.17216897 ;
	setAttr ".tk[19]" -type "float3" -0.48615912 0.64225411 -0.51140833 ;
	setAttr ".tk[20]" -type "float3" 0.51384091 0.64225411 -0.51140833 ;
	setAttr ".tk[21]" -type "float3" 0.51384091 0.27179757 -0.11052823 ;
	setAttr ".tk[22]" -type "float3" 0.51384091 -0.16597947 0.26961255 ;
	setAttr ".tk[23]" -type "float3" 0.51384091 -0.37670788 0.20168757 ;
	setAttr ".tk[24]" -type "float3" -0.48615912 0.27151266 -0.028858423 ;
	setAttr ".tk[25]" -type "float3" -0.48615912 -0.15772948 0.18815541 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "D44C46FC-484F-37EE-5F21-D186C0AC7605";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[6]" "e[17:25]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 1.7012944609234166 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 1.664323 -1.91531 ;
	setAttr ".rs" 65259;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 1.3114957862427772 -2.3058205780830896 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 2.0171502284313005 -1.5247994599190271 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "772899CA-4975-5C02-2FE6-FC844CDCB0B5";
	setAttr ".ics" -type "componentList" 1 "vtx[18:27]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 1.7012944609234166 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak12";
	rename -uid "496B6B50-4ACD-7D25-808F-ADA88675A049";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[18]" -type "float3" -0.48616016 0.64225423 -0.51140904 ;
	setAttr ".tk[19]" -type "float3" 0.51383984 0.64225423 -0.51140904 ;
	setAttr ".tk[20]" -type "float3" -0.48616016 0.27151272 -0.028859138 ;
	setAttr ".tk[21]" -type "float3" -0.48616016 -0.15772942 0.1881547 ;
	setAttr ".tk[22]" -type "float3" -0.48616016 -0.37582329 0.16842461 ;
	setAttr ".tk[23]" -type "float3" -0.13786115 -0.3756564 0.16216087 ;
	setAttr ".tk[24]" -type "float3" 0.027142363 -0.37592247 0.17216825 ;
	setAttr ".tk[25]" -type "float3" 0.51383984 -0.37670782 0.20168686 ;
	setAttr ".tk[26]" -type "float3" 0.51383984 -0.16597942 0.26961184 ;
	setAttr ".tk[27]" -type "float3" 0.51383984 0.27179763 -0.11052895 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "2FA4392A-4B6B-4D22-9FC3-5D8DCA773FC7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12]" "e[14:26]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 6.1397772 -1.1160045 ;
	setAttr ".rs" 40063;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 5.7847003400826509 -1.4952825245705164 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 6.4948544090169138 -0.73672639702229858 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "A1999C2F-4976-8E3E-8DE1-9985EA3745C7";
	setAttr ".ics" -type "componentList" 1 "vtx[20:33]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak13";
	rename -uid "DCA6E29D-48D2-5F62-2292-909B19347203";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[20]" -type "float3" -0.50882238 0.59376216 -0.44323897 ;
	setAttr ".tk[21]" -type "float3" 0.49117762 0.59376216 -0.44323897 ;
	setAttr ".tk[22]" -type "float3" -0.50882238 0.30118918 -0.13839889 ;
	setAttr ".tk[23]" -type "float3" -0.50882238 0.30006003 0.27491999 ;
	setAttr ".tk[24]" -type "float3" -0.50882238 0.063649885 0.31531715 ;
	setAttr ".tk[25]" -type "float3" -0.50882238 -0.2011044 0.18636608 ;
	setAttr ".tk[26]" -type "float3" -0.50882238 -0.43169808 0.2183758 ;
	setAttr ".tk[27]" -type "float3" -0.062719382 -0.42759728 0.11180913 ;
	setAttr ".tk[28]" -type "float3" 0.16858864 -0.43124413 0.20658314 ;
	setAttr ".tk[29]" -type "float3" 0.49117762 -0.42898583 0.1478833 ;
	setAttr ".tk[30]" -type "float3" 0.49117762 -0.15518117 0.087771058 ;
	setAttr ".tk[31]" -type "float3" 0.49117762 -0.08983732 -0.15332794 ;
	setAttr ".tk[32]" -type "float3" 0.49117762 0.10029387 -0.090281844 ;
	setAttr ".tk[33]" -type "float3" 0.49117762 0.21293139 -0.28053892 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "6C390E1E-4737-CE56-7511-DCA5B42BF6DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19:28]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 6.1960545 -3.098983 ;
	setAttr ".rs" 33543;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 5.8582050445608322 -3.4949816403236902 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 6.5339039819192584 -2.7029846844521082 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "29BB7096-4338-6CF0-3A7E-47BEAC58CE2C";
	setAttr ".ics" -type "componentList" 1 "vtx[16:25]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak14";
	rename -uid "F7B3747D-4215-6369-344F-4084D54EDE03";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[16]" -type "float3" -0.55296159 0.51778173 0.43806577 ;
	setAttr ".tk[17]" -type "float3" 0.44703838 0.51778173 0.43806577 ;
	setAttr ".tk[18]" -type "float3" -0.55296159 0.2313094 0.096259356 ;
	setAttr ".tk[19]" -type "float3" -0.55296159 -0.053995624 -0.3039453 ;
	setAttr ".tk[20]" -type "float3" -0.55296159 -0.45230532 -0.33927131 ;
	setAttr ".tk[21]" -type "float3" -0.023345597 -0.45792437 -0.19325662 ;
	setAttr ".tk[22]" -type "float3" 0.44703838 -0.4517417 -0.35393119 ;
	setAttr ".tk[23]" -type "float3" 0.44703838 -0.21093704 -0.02059865 ;
	setAttr ".tk[24]" -type "float3" 0.44703838 0.049292073 0.13670659 ;
	setAttr ".tk[25]" -type "float3" 0.44703838 0.31073904 0.10190463 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "CB11231E-4879-45C0-36C4-98AF4F5657D6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2:11]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 6.1960545 -3.098983 ;
	setAttr ".rs" 50889;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 5.8582050445608322 -3.4949816403236902 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 6.5339039819192584 -2.7029846844521082 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "7A30FBA0-4F5B-A02F-5E28-D9A9D8F0BE59";
	setAttr ".ics" -type "componentList" 1 "vtx[24:33]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak15";
	rename -uid "ED9F4C71-49C9-083A-5C12-AEAFADA13DEF";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[24]" -type "float3" -0.55296159 0.51778173 0.43806601 ;
	setAttr ".tk[25]" -type "float3" 0.44703838 0.51778173 0.43806601 ;
	setAttr ".tk[26]" -type "float3" 0.44703838 0.31073904 0.10190487 ;
	setAttr ".tk[27]" -type "float3" 0.44703838 0.049292088 0.13670683 ;
	setAttr ".tk[28]" -type "float3" 0.44703838 -0.21093702 -0.020598412 ;
	setAttr ".tk[29]" -type "float3" 0.44703838 -0.4517417 -0.35393095 ;
	setAttr ".tk[30]" -type "float3" -0.023345605 -0.45792437 -0.19325638 ;
	setAttr ".tk[31]" -type "float3" -0.55296159 -0.45230532 -0.33927107 ;
	setAttr ".tk[32]" -type "float3" -0.55296159 -0.053995609 -0.30394506 ;
	setAttr ".tk[33]" -type "float3" -0.55296159 0.23130941 0.096259594 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "5EE76CDD-44E8-89E1-24AF-08A875578FDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[14:27]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.095900245 6.1397777 -1.1160045 ;
	setAttr ".rs" 50398;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.081098621058170423 5.7847003400826509 -1.4952825245705164 ;
	setAttr ".cbx" -type "double3" 0.27289911373738163 6.4948548630701959 -0.73672639702229858 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "1F58D854-47E6-3EF9-E862-15AA0C3EF337";
	setAttr ".ics" -type "componentList" 1 "vtx[25:38]";
	setAttr ".ix" -type "matrix" 0.35399773479555202 0 0 0 0 0.69252272594605102 0 0
		 0 0 1 0 0.095900246339605588 6.130961703055676 0.57231152679056763 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak16";
	rename -uid "C1022ED9-4BA6-688F-0F8B-A8A73A4C03C7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[25]" -type "float3" -0.50882244 0.59376246 -0.44323897 ;
	setAttr ".tk[26]" -type "float3" 0.49117756 0.59376246 -0.44323897 ;
	setAttr ".tk[27]" -type "float3" -0.50882244 -0.2011041 0.18636608 ;
	setAttr ".tk[28]" -type "float3" -0.50882244 -0.43169779 0.2183758 ;
	setAttr ".tk[29]" -type "float3" -0.50882244 0.063649245 0.31531715 ;
	setAttr ".tk[30]" -type "float3" -0.50882244 0.30006033 0.27491999 ;
	setAttr ".tk[31]" -type "float3" -0.50882244 0.30118948 -0.13839889 ;
	setAttr ".tk[32]" -type "float3" 0.16858858 -0.43124479 0.20658314 ;
	setAttr ".tk[33]" -type "float3" 0.49117756 -0.42898554 0.1478833 ;
	setAttr ".tk[34]" -type "float3" -0.062719412 -0.42759794 0.11180913 ;
	setAttr ".tk[35]" -type "float3" 0.49117756 0.21293169 -0.28053892 ;
	setAttr ".tk[36]" -type "float3" 0.49117756 0.10029323 -0.090281844 ;
	setAttr ".tk[37]" -type "float3" 0.49117756 -0.089837007 -0.15332794 ;
	setAttr ".tk[38]" -type "float3" 0.49117756 -0.15518183 0.087771058 ;
createNode polySplit -n "polySplit29";
	rename -uid "488351AA-429B-0BD3-B50B-9CADDC47BCD0";
	setAttr -s 4 ".v[0:3]" -type "float3"  -0.5 2.250967 -0.070592001 
		-0.5 2.2853861 0.28596199 -0.29500899 2.5679679 0.25613901 -0.29500899 2.333149 -0.060403999;
	setAttr -s 8 ".e[0:7]"  0 18 18 0.174729 0.228862 20 20 1;
	setAttr -s 8 ".d[0:7]"  -2147483621 0 1 -2147483628 -2147483627 2 
		3 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit30";
	rename -uid "3F219156-40A4-569D-46AB-AC8873B8DF03";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483590 -2147483627 -2147483591;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit31";
	rename -uid "884BE10A-4A4F-F04F-9D6E-05BA63D0E33C";
	setAttr -s 3 ".e[0:2]"  1 0 1;
	setAttr -s 3 ".d[0:2]"  -2147483595 -2147483628 -2147483594;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit32";
	rename -uid "D2EF8537-411B-7969-B7A3-EFBF880CAFFD";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483595 -2147483609;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit33";
	rename -uid "B361F0CA-4EAE-FBC9-B664-CABB6B16A4E6";
	setAttr -s 4 ".e[0:3]"  0 1 0 0;
	setAttr -s 4 ".d[0:3]"  -2147483607 -2147483594 -2147483608 -2147483594;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitEdge -n "polySplitEdge3";
	rename -uid "51F3CB86-4E2E-6E7F-0C10-7DAF6DAFFA61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[26]" "e[53:59]";
createNode polySeparate -n "polySeparate4";
	rename -uid "CE2888C1-4A24-E62D-7212-3C981C55F41E";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId29";
	rename -uid "DF79B561-49F4-4E8F-963D-58BEE277CB95";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	rename -uid "F7B3C378-43B0-DECC-315F-EDA122B9DCC2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:36]";
createNode groupId -n "groupId30";
	rename -uid "B71349B0-4C7F-18F0-E305-579DFE48DEB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId31";
	rename -uid "94A31DDC-48CE-0D14-1D9C-D3A841E35662";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	rename -uid "CE7A58F9-4AB4-71E9-93DF-C194B8F5B758";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 25 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]";
createNode groupId -n "groupId32";
	rename -uid "3F68A581-4EC4-3E52-5C30-408136BCD3D3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	rename -uid "5D81E69F-4F92-F50C-2293-1B8D4221ACD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 12 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]";
createNode polySplitEdge -n "polySplitEdge4";
	rename -uid "63490925-48F7-7D48-AE9B-1CA2237ADE85";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12]" "e[24:31]";
createNode polySeparate -n "polySeparate5";
	rename -uid "93C7B6AE-4D84-FF00-70E3-EC821AB34E12";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId33";
	rename -uid "947A128A-440C-B4B7-440B-E7A38D3D228E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	rename -uid "FBDC0144-420B-4180-DC78-8CAE5B61A635";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 17 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]";
createNode groupId -n "groupId34";
	rename -uid "4B0EAED3-4DCE-9D68-B555-43907429C16D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	rename -uid "5763CF48-4335-A1D2-C410-5B99CBD10B39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "7DBB0EAB-4CF0-3F86-AFB4-3DA6A03AD8CA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12]" "e[14:20]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098567516 2.3310063 -3.8635395 ;
	setAttr ".rs" 34694;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024181358128828934 1.9749341011047363 -4.3676628754700966 ;
	setAttr ".cbx" -type "double3" 0.22131639641793871 2.6870784759521484 -3.3594159422987744 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "D6E0A2A9-4DFD-F8E8-A5CA-5582B1C009C3";
	setAttr ".ics" -type "componentList" 1 "vtx[14:21]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak17";
	rename -uid "80E95061-4290-66F8-876B-368F6A905F0A";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[14]" -type "float3" -0.10249552 0.34427023 0.57658637 ;
	setAttr ".tk[15]" -type "float3" 0.10249549 0.34427023 0.57658684 ;
	setAttr ".tk[16]" -type "float3" 0.10249549 0.068237305 0.097230345 ;
	setAttr ".tk[17]" -type "float3" 0.10249549 0.033818245 -0.25932392 ;
	setAttr ".tk[18]" -type "float3" 0.10249549 -0.16001391 -0.42415747 ;
	setAttr ".tk[19]" -type "float3" -0.10249555 -0.36787415 -0.42446432 ;
	setAttr ".tk[20]" -type "float3" -0.10249549 -0.24876356 -0.22950062 ;
	setAttr ".tk[21]" -type "float3" -0.10249552 -0.013944626 0.087042481 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "FAF9FA79-4D19-0A19-B2C5-8BAA8AB5B756";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[26:34]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098750703 5.2741804 -3.8590479 ;
	setAttr ".rs" 64486;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.023958830778656348 4.861025333404541 -4.3621909235882868 ;
	setAttr ".cbx" -type "double3" 0.22146023390229952 5.6873354911804199 -3.3559050908035135 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "FA4E3A9D-487C-B3B8-4D0E-FA9267724856";
	setAttr ".ics" -type "componentList" 1 "vtx[19:27]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak18";
	rename -uid "450B97B9-4C13-0C5D-6E68-DCB805283B24";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[19]" -type "float3" -0.11388376 -0.38628387 0.50236613 ;
	setAttr ".tk[20]" -type "float3" 0.091107279 -0.38628387 0.50236565 ;
	setAttr ".tk[21]" -type "float3" -0.1138837 -0.098312378 0.17411478 ;
	setAttr ".tk[22]" -type "float3" -0.1138837 0.16239882 -0.18231504 ;
	setAttr ".tk[23]" -type "float3" -0.11388376 0.21444225 -0.49674836 ;
	setAttr ".tk[24]" -type "float3" 0.091107279 0.44002628 -0.49641553 ;
	setAttr ".tk[25]" -type "float3" 0.091107279 0.23581266 -0.21829383 ;
	setAttr ".tk[26]" -type "float3" 0.091107279 -0.019149303 -0.033331078 ;
	setAttr ".tk[27]" -type "float3" 0.091107279 -0.16266251 0.24825723 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	rename -uid "A9D8DA74-4351-51BA-E909-9E88DF43B48D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2:10]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098750703 5.2741804 -3.8590479 ;
	setAttr ".rs" 59771;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.023958830778656348 4.861025333404541 -4.3621909235882868 ;
	setAttr ".cbx" -type "double3" 0.22146023390229952 5.6873354911804199 -3.3559050908035135 ;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "69E54868-47F6-604C-4900-759F4F9E8F80";
	setAttr ".ics" -type "componentList" 1 "vtx[17:25]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak19";
	rename -uid "B3BBEEF2-47E1-0808-CD23-4FB59320BBBE";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[17]" -type "float3" -0.11388391 -0.38628292 0.50236613 ;
	setAttr ".tk[18]" -type "float3" 0.09110713 -0.38628292 0.50236565 ;
	setAttr ".tk[19]" -type "float3" 0.09110713 -0.16266155 0.24825723 ;
	setAttr ".tk[20]" -type "float3" 0.09110713 -0.01914835 -0.033331085 ;
	setAttr ".tk[21]" -type "float3" 0.09110713 0.23581362 -0.21829383 ;
	setAttr ".tk[22]" -type "float3" 0.09110713 0.44002724 -0.49641556 ;
	setAttr ".tk[23]" -type "float3" -0.11388391 0.21444321 -0.49674839 ;
	setAttr ".tk[24]" -type "float3" -0.11388385 0.16239977 -0.18231504 ;
	setAttr ".tk[25]" -type "float3" -0.11388385 -0.098311424 0.17411478 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	rename -uid "042F22FF-4DA5-773B-FDEA-F9A1C55CC113";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17:24]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.098567508 2.3310063 -3.8635395 ;
	setAttr ".rs" 32806;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.024181377504305601 1.9749341011047363 -4.3676628742591292 ;
	setAttr ".cbx" -type "double3" 0.2213164012618079 2.6870784759521484 -3.3594160316319024 ;
createNode polyMergeVert -n "polyMergeVert10";
	rename -uid "D3FD5425-48D4-46E2-8477-ECB62F60515A";
	setAttr ".ics" -type "componentList" 1 "vtx[18:25]";
	setAttr ".ix" -type "matrix" 0.99917412562831198 0 -0.040633319762213328 0 0 1 0 0
		 0.040633319762213328 0 0.99917412562831198 0 0.49775192637777221 0 -3.8301560414205853 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak20";
	rename -uid "3BB4E7FD-4259-E6DA-08EB-F09536ACA071";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[18]" -type "float3" -0.10249549 0.34427023 0.57658637 ;
	setAttr ".tk[19]" -type "float3" 0.10249549 0.34427023 0.57658732 ;
	setAttr ".tk[20]" -type "float3" -0.10249555 -0.36787415 -0.42446434 ;
	setAttr ".tk[21]" -type "float3" -0.10249549 -0.24876356 -0.22950065 ;
	setAttr ".tk[22]" -type "float3" -0.10249549 -0.013944626 0.087042689 ;
	setAttr ".tk[23]" -type "float3" 0.10249549 -0.16001391 -0.4241575 ;
	setAttr ".tk[24]" -type "float3" 0.10249549 0.033818245 -0.25932419 ;
	setAttr ".tk[25]" -type "float3" 0.10249549 0.068237305 0.097230315 ;
createNode groupId -n "groupId35";
	rename -uid "5F0B8D4D-4826-D479-5749-D1AE47CD9DC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId36";
	rename -uid "7CF5C0A7-4067-2558-C408-E7841D0BD7DF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId37";
	rename -uid "A11F845B-4B17-1627-B966-F0B51DA30004";
	setAttr ".ihi" 0;
createNode groupId -n "groupId38";
	rename -uid "6D13F3AD-416C-CD57-A283-089E93355ABB";
	setAttr ".ihi" 0;
createNode groupId -n "groupId39";
	rename -uid "C32BB30F-44B8-E82F-61E1-0A96A2969EFE";
	setAttr ".ihi" 0;
createNode groupId -n "groupId40";
	rename -uid "1C39A71B-4B5C-D5EF-4A12-59AF3CF2308B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId41";
	rename -uid "5E786516-4BFD-E0D4-874F-0E826F26AAC9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId42";
	rename -uid "53BB0C56-46F4-2E8F-E974-56BB2A028711";
	setAttr ".ihi" 0;
createNode groupId -n "groupId43";
	rename -uid "7213529B-457A-05D9-3303-58832AC748E9";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "6EB11891-4443-2E07-E048-0290AE81AB8F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 610\n            -height 339\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 610\n            -height 338\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 610\n            -height 338\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1227\n            -height 721\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n"
		+ "            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n"
		+ "                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n"
		+ "                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1227\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1227\\n    -height 721\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6C0E054E-4DEF-7AEE-76EF-0F993771EB68";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 44 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 42 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "mayaHardware2";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySplitEdge4.out" "polySurfaceShape9.i";
connectAttr "groupId31.id" "polySurfaceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape9.iog.og[0].gco";
connectAttr "groupId29.id" "VerticalSticksShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VerticalSticksShape4.iog.og[0].gco";
connectAttr "groupParts11.og" "VerticalSticksShape4.i";
connectAttr "polyTweakUV5.uvtk[0]" "VerticalSticksShape4.uvst[0].uvtw";
connectAttr "groupId30.id" "VerticalSticksShape4.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "polySurfaceShape8.i";
connectAttr "groupId21.id" "polySurfaceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape8.iog.og[0].gco";
connectAttr "groupId18.id" "pCubeShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape7.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape7.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCubeShape7.uvst[0].uvtw";
connectAttr "groupId19.id" "pCubeShape7.ciog.cog[0].cgid";
connectAttr "groupId24.id" "HorizontalStickShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HorizontalStickShape1.iog.og[0].gco";
connectAttr "groupParts7.og" "HorizontalStickShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "HorizontalStickShape1.uvst[0].uvtw";
connectAttr "groupId25.id" "HorizontalStickShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape9.iog.og[0].gco";
connectAttr "groupId2.id" "pCubeShape9.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape10.iog.og[0].gco";
connectAttr "groupId4.id" "pCubeShape10.ciog.cog[0].cgid";
connectAttr "groupId5.id" "pCubeShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape11.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape11.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape12.iog.og[0].gco";
connectAttr "groupId8.id" "pCubeShape12.ciog.cog[0].cgid";
connectAttr "groupId9.id" "pCubeShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape13.iog.og[0].gco";
connectAttr "groupId10.id" "pCubeShape13.ciog.cog[0].cgid";
connectAttr "groupId11.id" "pCubeShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape14.iog.og[0].gco";
connectAttr "groupId12.id" "pCubeShape14.ciog.cog[0].cgid";
connectAttr "groupId13.id" "pCubeShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape15.iog.og[0].gco";
connectAttr "groupId14.id" "pCubeShape15.ciog.cog[0].cgid";
connectAttr "groupId15.id" "pCubeShape16.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape16.iog.og[0].gco";
connectAttr "groupId16.id" "pCubeShape16.ciog.cog[0].cgid";
connectAttr "polyTweakUV9.out" "IntactModelShape.i";
connectAttr "groupId17.id" "IntactModelShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "IntactModelShape.iog.og[0].gco";
connectAttr "polyTweakUV9.uvtk[0]" "IntactModelShape.uvst[0].uvtw";
connectAttr "polyMergeVert2.out" "HorizontalStickPieceShape.i";
connectAttr "groupId27.id" "HorizontalStickPieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HorizontalStickPieceShape.iog.og[0].gco"
		;
connectAttr "polyMergeVert1.out" "HorizontalStickPieceShape1.i";
connectAttr "groupId28.id" "HorizontalStickPieceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HorizontalStickPieceShape1.iog.og[0].gco"
		;
connectAttr "polyMergeVert6.out" "HStickPieceShape2.i";
connectAttr "groupId20.id" "HStickPieceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HStickPieceShape2.iog.og[0].gco";
connectAttr "polyMergeVert3.out" "HStickPieceShape.i";
connectAttr "groupId22.id" "HStickPieceShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HStickPieceShape.iog.og[0].gco";
connectAttr "polyMergeVert4.out" "HStickPieceShape1.i";
connectAttr "groupId23.id" "HStickPieceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "HStickPieceShape1.iog.og[0].gco";
connectAttr "polyTweakUV3.out" "VerticalSticksShape6.i";
connectAttr "polyTweakUV3.uvtk[0]" "VerticalSticksShape6.uvst[0].uvtw";
connectAttr "polyTweakUV4.out" "VerticalSticksShape5.i";
connectAttr "polyTweakUV4.uvtk[0]" "VerticalSticksShape5.uvst[0].uvtw";
connectAttr "polyMergeVert10.out" "VStickPieceShape6.i";
connectAttr "groupId34.id" "VStickPieceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape6.iog.og[0].gco";
connectAttr "polyMergeVert8.out" "VStickPieceShape5.i";
connectAttr "groupId33.id" "VStickPieceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape5.iog.og[0].gco";
connectAttr "polyMergeVert7.out" "VStickPieceShape4.i";
connectAttr "groupId32.id" "VStickPieceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape4.iog.og[0].gco";
connectAttr "groupId35.id" "VStickPieceShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape7.iog.og[0].gco";
connectAttr "groupId36.id" "VStickPieceShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape8.iog.og[0].gco";
connectAttr "groupId37.id" "VStickPieceShape9.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape9.iog.og[0].gco";
connectAttr "groupId38.id" "VStickPieceShape10.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape10.iog.og[0].gco";
connectAttr "groupId39.id" "VStickPieceShape11.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape11.iog.og[0].gco";
connectAttr "groupId40.id" "VStickPieceShape12.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape12.iog.og[0].gco";
connectAttr "groupId41.id" "VStickPieceShape13.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape13.iog.og[0].gco";
connectAttr "groupId42.id" "VStickPieceShape14.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape14.iog.og[0].gco";
connectAttr "groupId43.id" "VStickPieceShape15.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "VStickPieceShape15.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "|BrokenPieces|VerticalSticks5|polySurfaceShape1.o" "polyExtrudeFace1.ip"
		;
connectAttr "VerticalSticksShape5.wm" "polyExtrudeFace1.mp";
connectAttr "|VerticalSticks4|polySurfaceShape2.o" "polyExtrudeFace2.ip";
connectAttr "VerticalSticksShape4.wm" "polyExtrudeFace2.mp";
connectAttr "|HorizontalStick1|polySurfaceShape5.o" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polyCube2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "pCubeShape9.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape10.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape11.o" "polyUnite1.ip[2]";
connectAttr "pCubeShape12.o" "polyUnite1.ip[3]";
connectAttr "pCubeShape13.o" "polyUnite1.ip[4]";
connectAttr "pCubeShape14.o" "polyUnite1.ip[5]";
connectAttr "pCubeShape15.o" "polyUnite1.ip[6]";
connectAttr "pCubeShape16.o" "polyUnite1.ip[7]";
connectAttr "pCubeShape9.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape10.wm" "polyUnite1.im[1]";
connectAttr "pCubeShape11.wm" "polyUnite1.im[2]";
connectAttr "pCubeShape12.wm" "polyUnite1.im[3]";
connectAttr "pCubeShape13.wm" "polyUnite1.im[4]";
connectAttr "pCubeShape14.wm" "polyUnite1.im[5]";
connectAttr "pCubeShape15.wm" "polyUnite1.im[6]";
connectAttr "pCubeShape16.wm" "polyUnite1.im[7]";
connectAttr "polyUnite1.out" "groupParts1.ig";
connectAttr "groupId17.id" "groupParts1.gi";
connectAttr "groupParts1.og" "polyAutoProj1.ip";
connectAttr "IntactModelShape.wm" "polyAutoProj1.mp";
connectAttr "polyTweak4.out" "polyAutoProj2.ip";
connectAttr "HorizontalStickShape1.wm" "polyAutoProj2.mp";
connectAttr "polySplit4.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyAutoProj3.ip";
connectAttr "pCubeShape7.wm" "polyAutoProj3.mp";
connectAttr "polySplit6.out" "polyTweak5.ip";
connectAttr "polySurfaceShape6.o" "polyAutoProj4.ip";
connectAttr "VerticalSticksShape6.wm" "polyAutoProj4.mp";
connectAttr "polyTweak6.out" "polyAutoProj5.ip";
connectAttr "VerticalSticksShape5.wm" "polyAutoProj5.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyAutoProj6.ip";
connectAttr "VerticalSticksShape4.wm" "polyAutoProj6.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak7.ip";
connectAttr "polyAutoProj2.out" "polyTweakUV1.ip";
connectAttr "polyAutoProj3.out" "polyTweakUV2.ip";
connectAttr "polyAutoProj4.out" "polyTweakUV3.ip";
connectAttr "polyAutoProj5.out" "polyTweakUV4.ip";
connectAttr "polyAutoProj6.out" "polyTweakUV5.ip";
connectAttr "polyAutoProj1.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV5.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polyTweakUV1.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polyTweakUV2.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polySplit19.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polySplit23.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "polySplit25.out" "polySplit26.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplit27.out" "polySplitEdge1.ip";
connectAttr "pCubeShape7.o" "polySeparate1.ip";
connectAttr "polySplitEdge1.out" "groupParts2.ig";
connectAttr "groupId18.id" "groupParts2.gi";
connectAttr "polySeparate1.out[0]" "groupParts3.ig";
connectAttr "groupId20.id" "groupParts3.gi";
connectAttr "polySeparate1.out[1]" "groupParts4.ig";
connectAttr "groupId21.id" "groupParts4.gi";
connectAttr "polySurfaceShape8.o" "polySeparate2.ip";
connectAttr "polySeparate2.out[0]" "groupParts5.ig";
connectAttr "groupId22.id" "groupParts5.gi";
connectAttr "polySeparate2.out[1]" "groupParts6.ig";
connectAttr "groupId23.id" "groupParts6.gi";
connectAttr "polySplit16.out" "polySplit28.ip";
connectAttr "polySplit28.out" "polySplitEdge2.ip";
connectAttr "HorizontalStickShape1.o" "polySeparate3.ip";
connectAttr "polySplitEdge2.out" "groupParts7.ig";
connectAttr "groupId24.id" "groupParts7.gi";
connectAttr "polySeparate3.out[0]" "groupParts8.ig";
connectAttr "polySeparate3.out[1]" "groupParts9.ig";
connectAttr "groupId27.id" "groupParts9.gi";
connectAttr "groupParts9.og" "deleteComponent1.ig";
connectAttr "groupParts8.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "groupParts10.ig";
connectAttr "groupId28.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyExtrudeEdge1.ip";
connectAttr "HorizontalStickPieceShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyTweak11.out" "polyMergeVert1.ip";
connectAttr "HorizontalStickPieceShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak11.ip";
connectAttr "deleteComponent1.og" "polyExtrudeEdge2.ip";
connectAttr "HorizontalStickPieceShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyTweak12.out" "polyMergeVert2.ip";
connectAttr "HorizontalStickPieceShape.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeEdge2.out" "polyTweak12.ip";
connectAttr "groupParts5.og" "polyExtrudeEdge3.ip";
connectAttr "HStickPieceShape.wm" "polyExtrudeEdge3.mp";
connectAttr "polyTweak13.out" "polyMergeVert3.ip";
connectAttr "HStickPieceShape.wm" "polyMergeVert3.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak13.ip";
connectAttr "groupParts6.og" "polyExtrudeEdge4.ip";
connectAttr "HStickPieceShape1.wm" "polyExtrudeEdge4.mp";
connectAttr "polyTweak14.out" "polyMergeVert4.ip";
connectAttr "HStickPieceShape1.wm" "polyMergeVert4.mp";
connectAttr "polyExtrudeEdge4.out" "polyTweak14.ip";
connectAttr "groupParts3.og" "polyExtrudeEdge5.ip";
connectAttr "HStickPieceShape2.wm" "polyExtrudeEdge5.mp";
connectAttr "polyTweak15.out" "polyMergeVert5.ip";
connectAttr "HStickPieceShape2.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak15.ip";
connectAttr "polyMergeVert5.out" "polyExtrudeEdge6.ip";
connectAttr "HStickPieceShape2.wm" "polyExtrudeEdge6.mp";
connectAttr "polyTweak16.out" "polyMergeVert6.ip";
connectAttr "HStickPieceShape2.wm" "polyMergeVert6.mp";
connectAttr "polyExtrudeEdge6.out" "polyTweak16.ip";
connectAttr "polySplit10.out" "polySplit29.ip";
connectAttr "polySplit29.out" "polySplit30.ip";
connectAttr "polySplit30.out" "polySplit31.ip";
connectAttr "polySplit31.out" "polySplit32.ip";
connectAttr "polySplit32.out" "polySplit33.ip";
connectAttr "polySplit33.out" "polySplitEdge3.ip";
connectAttr "VerticalSticksShape4.o" "polySeparate4.ip";
connectAttr "polySplitEdge3.out" "groupParts11.ig";
connectAttr "groupId29.id" "groupParts11.gi";
connectAttr "polySeparate4.out[0]" "groupParts12.ig";
connectAttr "groupId31.id" "groupParts12.gi";
connectAttr "polySeparate4.out[1]" "groupParts13.ig";
connectAttr "groupId32.id" "groupParts13.gi";
connectAttr "groupParts12.og" "polySplitEdge4.ip";
connectAttr "polySurfaceShape9.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts14.ig";
connectAttr "groupId33.id" "groupParts14.gi";
connectAttr "polySeparate5.out[1]" "groupParts15.ig";
connectAttr "groupId34.id" "groupParts15.gi";
connectAttr "groupParts13.og" "polyExtrudeEdge7.ip";
connectAttr "VStickPieceShape4.wm" "polyExtrudeEdge7.mp";
connectAttr "polyTweak17.out" "polyMergeVert7.ip";
connectAttr "VStickPieceShape4.wm" "polyMergeVert7.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak17.ip";
connectAttr "groupParts14.og" "polyExtrudeEdge8.ip";
connectAttr "VStickPieceShape5.wm" "polyExtrudeEdge8.mp";
connectAttr "polyTweak18.out" "polyMergeVert8.ip";
connectAttr "VStickPieceShape5.wm" "polyMergeVert8.mp";
connectAttr "polyExtrudeEdge8.out" "polyTweak18.ip";
connectAttr "groupParts15.og" "polyExtrudeEdge9.ip";
connectAttr "VStickPieceShape6.wm" "polyExtrudeEdge9.mp";
connectAttr "polyTweak19.out" "polyMergeVert9.ip";
connectAttr "VStickPieceShape6.wm" "polyMergeVert9.mp";
connectAttr "polyExtrudeEdge9.out" "polyTweak19.ip";
connectAttr "polyMergeVert9.out" "polyExtrudeEdge10.ip";
connectAttr "VStickPieceShape6.wm" "polyExtrudeEdge10.mp";
connectAttr "polyTweak20.out" "polyMergeVert10.ip";
connectAttr "VStickPieceShape6.wm" "polyMergeVert10.mp";
connectAttr "polyExtrudeEdge10.out" "polyTweak20.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "VerticalSticksShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "VerticalSticksShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "IntactModelShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HStickPieceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HStickPieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HStickPieceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HorizontalStickShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HorizontalStickShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "HorizontalStickPieceShape.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "HorizontalStickPieceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "VerticalSticksShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VerticalSticksShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape9.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape10.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape11.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape12.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape13.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape14.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "VStickPieceShape15.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId20.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId23.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId25.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId31.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId32.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId36.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId37.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId38.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId39.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId40.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId41.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId42.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId43.msg" ":initialShadingGroup.gn" -na;
// End of Fence.ma
