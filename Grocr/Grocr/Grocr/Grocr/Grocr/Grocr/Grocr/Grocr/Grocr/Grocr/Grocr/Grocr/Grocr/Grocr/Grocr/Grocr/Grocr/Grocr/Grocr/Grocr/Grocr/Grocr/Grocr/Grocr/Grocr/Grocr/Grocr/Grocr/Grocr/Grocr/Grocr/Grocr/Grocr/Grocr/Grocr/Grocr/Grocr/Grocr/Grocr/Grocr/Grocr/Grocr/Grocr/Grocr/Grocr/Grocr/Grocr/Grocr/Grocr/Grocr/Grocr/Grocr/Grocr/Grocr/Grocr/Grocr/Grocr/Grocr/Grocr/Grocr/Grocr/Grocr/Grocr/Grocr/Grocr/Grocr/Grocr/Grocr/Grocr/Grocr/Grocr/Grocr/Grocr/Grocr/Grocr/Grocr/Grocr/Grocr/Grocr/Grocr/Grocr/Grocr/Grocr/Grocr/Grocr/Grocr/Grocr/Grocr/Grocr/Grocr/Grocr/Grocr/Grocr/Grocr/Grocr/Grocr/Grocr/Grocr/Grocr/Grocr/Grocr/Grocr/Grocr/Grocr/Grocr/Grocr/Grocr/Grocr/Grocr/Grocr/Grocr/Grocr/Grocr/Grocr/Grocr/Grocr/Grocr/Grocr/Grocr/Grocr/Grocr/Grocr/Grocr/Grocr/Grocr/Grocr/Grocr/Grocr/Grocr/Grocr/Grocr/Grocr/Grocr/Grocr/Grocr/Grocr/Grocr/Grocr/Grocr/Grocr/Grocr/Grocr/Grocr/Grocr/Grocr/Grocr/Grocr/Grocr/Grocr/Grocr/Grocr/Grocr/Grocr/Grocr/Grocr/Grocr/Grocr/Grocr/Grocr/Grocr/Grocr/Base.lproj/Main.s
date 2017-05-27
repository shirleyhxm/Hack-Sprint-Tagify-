<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12120" systemVersion="16E195" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" colorMatched="YES" initialViewController="vXZ-lx-hvc">
    <device id="retina4_7" orientation="portrait">
        <adaptation id="fullscreen"/>
    </device>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12088"/>
        <capability name="Alignment constraints with different attributes" minToolsVersion="5.1"/>
        <capability name="Aspect ratio constraints" minToolsVersion="5.1"/>
        <capability name="Constraints to layout margins" minToolsVersion="6.0"/>
        <capability name="Constraints with non-1.0 multipliers" minToolsVersion="5.1"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--Login View Controller-->
        <scene sceneID="ufC-wZ-h7g">
            <objects>
                <viewController id="vXZ-lx-hvc" customClass="LoginViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="jyV-Pf-zRb"/>
                        <viewControllerLayoutGuide type="bottom" id="2fi-mo-0CV"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="kh9-bI-dsS">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Tagify" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="XlR-6D-pNE">
                                <rect key="frame" x="104.5" y="92" width="166" height="77"/>
                                <constraints>
                                    <constraint firstAttribute="width" constant="166" id="D2O-pG-5WL"/>
                                    <constraint firstAttribute="height" constant="77" id="gPQ-9y-BZM"/>
                                </constraints>
                                <fontDescription key="fontDescription" name="Avenir-Light" family="Avenir" pointSize="64"/>
                                <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <nil key="highlightedColor"/>
                            </label>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Email" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="FXf-pW-pxd">
                                <rect key="frame" x="70" y="288" width="235" height="30"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="30" id="bDr-5c-4xr"/>
                                </constraints>
                                <fontDescription key="fontDescription" name="Avenir-Book" family="Avenir" pointSize="14"/>
                                <textInputTraits key="textInputTraits" keyboardType="emailAddress"/>
                                <connections>
                                    <outlet property="delegate" destination="vXZ-lx-hvc" id="fgP-kb-whs"/>
                                </connections>
                            </textField>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Password" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="hxW-pl-K5k">
                                <rect key="frame" x="70" y="326" width="235" height="30"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="30" id="cCv-SX-nS7"/>
                                </constraints>
                                <fontDescription key="fontDescription" name="Avenir-Book" family="Avenir" pointSize="14"/>
                                <textInputTraits key="textInputTraits" secureTextEntry="YES"/>
                                <connections>
                                    <outlet property="delegate" destination="vXZ-lx-hvc" id="emF-1a-2Lj"/>
                                </connections>
                            </textField>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="ufw-i0-710">
                                <rect key="frame" x="70" y="430" width="235" height="38"/>
                                <color key="backgroundColor" red="0.78039215689999997" green="0.35686274509999999" blue="0.22352941179999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="38" id="7br-n8-SvO"/>
                                </constraints>
                                <fontDescription key="fontDescription" name="Avenir-Book" family="Avenir" pointSize="15"/>
                                <state key="normal" title="Sign up">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    <color key="titleShadowColor" red="0.5" green="0.5" blue="0.5" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <userDefinedRuntimeAttributes>
                                    <userDefinedRuntimeAttribute type="color" keyPath="layer.borderColorFromUIColor">
                                        <color key="value" red="0.85957932472229004" green="0.40118402242660522" blue="0.29446059465408325" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </userDefinedRuntimeAttribute>
                                    <userDefinedRuntimeAttribute type="number" keyPath="layer.borderWidth">
                                        <integer key="value" value="1"/>
                                    </userDefinedRuntimeAttribute>
                                    <userDefinedRuntimeAttribute type="number" keyPath="layer.cornerRadius">
                                        <integer key="value" value="6"/>
                                    </userDefinedRuntimeAttribute>
                                </userDefinedRuntimeAttributes>
                                <connections>
                                    <action selector="signUpDidTouch:" destination="vXZ-lx-hvc" eventType="touchUpInside" id="Agh-Cs-7wm"/>
                                </connections>
                            </button>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="vRw-I3-Jav">
                                <rect key="frame" x="70" y="376" width="235" height="38"/>
                                <color key="backgroundColor" red="0.7803921568627451" green="0.35686274509803922" blue="0.22352941176470587" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="38" id="5c9-Up-nv4"/>
                                </constraints>
                                <fontDescription key="fontDescription" name="Avenir-Book" family="Avenir" pointSize="15"/>
                                <state key="normal" title="Login">
                                    <color key="titleColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    <color key="titleShadowColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <userDefinedRuntimeAttributes>
                                    <userDefinedRuntimeAttribute type="number" keyPath="layer.cornerRadius">
                                        <integer key="value" value="6"/>
                                    </userDefinedRuntimeAttribute>
                                </userDefinedRuntimeAttributes>
                                <connections>
                                    <action selector="loginDidTouch:" destination="vXZ-lx-hvc" eventType="touchUpInside" id="yIv-aa-I82"/>
                                </connections>
                            </button>
                        </subviews>
                        <color key="backgroundColor" red="1" green="0.54117647059999996" blue="0.39607843139999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="XlR-6D-pNE" firstAttribute="top" secondItem="jyV-Pf-zRb" secondAttribute="bottom" constant="72" id="26x-Qn-9e9"/>
                            <constraint firstItem="ufw-i0-710" firstAttribute="leading" secondItem="kh9-bI-dsS" secondAttribute="leadingMargin" constant="54" id="9U0-91-ufG"/>
                            <constraint firstAttribute="trailingMargin" secondItem="hxW-pl-K5k" secondAttribute="trailing" constant="54" id="I3P-lp-hVn"/>
                            <constraint firstItem="FXf-pW-pxd" firstAttribute="top" secondItem="XlR-6D-pNE" secondAttribute="bottom" constant="119" id="IDh-LG-peZ"/>
                            <constraint firstAttribute="centerX" secondItem="XlR-6D-pNE" secondAttribute="centerX" id="ItG-A2-m0j"/>
                            <constraint firstItem="hxW-pl-K5k" firstAttribute="leading" secondItem="kh9-bI-dsS" secondAttribute="leadingMargin" constant="54" id="P42-vj-kV2"/>
                            <constraint firstAttribute="trailingMargin" secondItem="ufw-i0-710" secondAttribute="trailing" constant="54" id="Wg2-fK-Qye"/>
                            <constraint firstAttribute="trailingMargin" secondItem="FXf-pW-pxd" secondAttribute="trailing" constant="54" id="ZGI-2N-yal"/>
                            <constraint firstItem="FXf-pW-pxd" firstAttribute="leading" secondItem="kh9-bI-dsS" secondAttribute="leadingMargin" constant="54" id="cFz-lW-Iqb"/>
                            <constraint firstItem="vRw-I3-Jav" firstAttribute="leading" secondItem="kh9-bI-dsS" secondAttribute="leadingMargin" constant="54" id="fKW-2O-KoJ"/>
                            <constraint firstItem="ufw-i0-710" firstAttribute="top" secondItem="vRw-I3-Jav" secondAttribute="bottom" constant="16" id="kg0-1B-eeL"/>
                            <constraint firstAttribute="trailingMargin" secondItem="vRw-I3-Jav" secondAttribute="trailing" constant="54" id="mSh-Am-AZ6"/>
                            <constraint firstItem="vRw-I3-Jav" firstAttribute="top" secondItem="hxW-pl-K5k" secondAttribute="bottom" constant="20" id="o2G-6e-s6Y"/>
                            <constraint firstItem="hxW-pl-K5k" firstAttribute="top" secondItem="FXf-pW-pxd" secondAttribute="bottom" constant="8" id="w4t-Rh-6er"/>
                        </constraints>
                    </view>
                    <connections>
                        <outlet property="textFieldLoginEmail" destination="FXf-pW-pxd" id="BPY-iG-OjN"/>
                        <outlet property="textFieldLoginPassword" destination="hxW-pl-K5k" id="MPd-yK-pII"/>
                        <segue destination="e4A-9j-dGT" kind="presentation" identifier="LoginToSongView" id="gqd-48-h8Y"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="x5A-6p-PRh" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="297" y="849"/>
        </scene>
        <!--Tagify-->
        <scene sceneID="GyF-mt-OzG">
            <objects>
                <viewController id="gpg-0c-vNo" customClass="SongViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="Ctd-S5-1yH"/>
                        <viewControllerLayoutGuide type="bottom" id="hhW-VI-yLf"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="Tg3-OL-Bgc">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view alpha="0.90000000000000002" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="9ag-Qr-jG0" userLabel="Search Bar View">
                                <rect key="frame" x="0.0" y="20" width="375" height="80"/>
                                <subviews>
                                    <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Search song" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="Ixg-zh-rXM">
                                        <rect key="frame" x="18" y="20" width="339" height="40"/>
                                        <color key="backgroundColor" cocoaTouchSystemColor="tableCellGroupedBackgroundColor"/>
                                        <constraints>
                                            <constraint firstAttribute="height" constant="40" id="deh-Gp-ehS"/>
                                        </constraints>
                                        <nil key="textColor"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="16"/>
                                        <textInputTraits key="textInputTraits"/>
                                        <connections>
                                            <action selector="searchSongEditDidEnd:" destination="gpg-0c-vNo" eventType="editingDidEnd" id="B8k-HI-TqL"/>
                                            <outlet property="delegate" destination="gpg-0c-vNo" id="M6U-BB-8Do"/>
                                        </connections>
                                    </textField>
                                </subviews>
                                <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="Ixg-zh-rXM" firstAttribute="centerX" secondItem="9ag-Qr-jG0" secondAttribute="centerX" id="D3N-qa-m2U"/>
                                    <constraint firstAttribute="height" constant="80" id="Q46-9O-euz"/>
                                    <constraint firstItem="Ixg-zh-rXM" firstAttribute="centerY" secondItem="9ag-Qr-jG0" secondAttribute="centerY" id="ooF-k2-0eL"/>
                                    <constraint firstItem="Ixg-zh-rXM" firstAttribute="width" secondItem="9ag-Qr-jG0" secondAttribute="width" multiplier="0.9" constant="1" id="yl2-c3-FhV"/>
                                </constraints>
                            </view>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="A2Q-gh-CLO" userLabel="Music Player View">
                                <rect key="frame" x="0.0" y="538" width="375" height="80"/>
                                <subviews>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="89U-aw-fwk">
                                        <rect key="frame" x="74" y="25" width="38" height="36"/>
                                        <state key="normal" image="backward 2.27.52 AM 2.27.53 AM.png"/>
                                        <connections>
                                            <action selector="backwardButtonPressed:" destination="gpg-0c-vNo" eventType="touchUpInside" id="5wp-Tm-ghe"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="HbX-We-Fbl">
                                        <rect key="frame" x="264" y="25" width="38" height="36"/>
                                        <state key="normal" image="forward.png"/>
                                        <connections>
                                            <action selector="forwardButtonPressed:" destination="gpg-0c-vNo" eventType="touchUpInside" id="TLF-lj-eGq"/>
                                        </connections>
                                    </button>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="gru-LO-ILg">
                                        <rect key="frame" x="162" y="20" width="52" height="50"/>
                                        <state key="normal" image="playButton.png"/>
                                        <connections>
                                            <action selector="playButtonPressed:" destination="gpg-0c-vNo" eventType="touchUpInside" id="G2E-y1-ZC6"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="1" green="0.73333333329999995" blue="0.57647058819999997" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="89U-aw-fwk" firstAttribute="top" secondItem="A2Q-gh-CLO" secondAttribute="top" constant="25" id="EaJ-Mx-FOT"/>
                                    <constraint firstItem="gru-LO-ILg" firstAttribute="centerX" secondItem="A2Q-gh-CLO" secondAttribute="centerX" id="W9p-hD-nDf"/>
                                    <constraint firstItem="HbX-We-Fbl" firstAttribute="top" secondItem="A2Q-gh-CLO" secondAttribute="top" constant="25" id="YIq-3g-bgr"/>
                                    <constraint firstAttribute="bottom" secondItem="gru-LO-ILg" secondAttribute="bottom" constant="10" id="Yde-71-UaL"/>
                                    <constraint firstItem="gru-LO-ILg" firstAttribute="leading" secondItem="89U-aw-fwk" secondAttribute="trailing" constant="50" id="ZaN-hU-WBe"/>
                                    <constraint firstItem="HbX-We-Fbl" firstAttribute="leading" secondItem="gru-LO-ILg" secondAttribute="trailing" constant="50" id="fQx-mP-RBL"/>
                                    <constraint firstAttribute="height" constant="80" id="fwz-Zw-aap"/>
                                    <constraint firstItem="gru-LO-ILg" firstAttribute="top" secondItem="A2Q-gh-CLO" secondAttribute="top" constant="20" id="nVo-Hk-V7p"/>
                                </constraints>
                            </view>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="none" rowHeight="57" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="VUH-iz-7tk">
                                <rect key="frame" x="0.0" y="100" width="375" height="438"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="blue" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" reuseIdentifier="SongCell" rowHeight="100" id="x9P-W1-qHf" customClass="SongTableViewCell" customModule="Tagify" customModuleProvider="target">
                                        <rect key="frame" x="0.0" y="28" width="375" height="100"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="x9P-W1-qHf" id="yHq-7a-Pty">
                                            <rect key="frame" x="0.0" y="0.0" width="375" height="100"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <imageView clipsSubviews="YES" userInteractionEnabled="NO" contentMode="scaleAspectFill" horizontalHuggingPriority="251" verticalHuggingPriority="251" image="music.jpg" translatesAutoresizingMaskIntoConstraints="NO" id="D1r-k6-XHX">
                                                    <rect key="frame" x="18" y="25" width="51" height="51"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" secondItem="D1r-k6-XHX" secondAttribute="height" multiplier="1:1" id="ams-8s-nLi"/>
                                                    </constraints>
                                                </imageView>
                                                <stackView opaque="NO" contentMode="scaleToFill" axis="vertical" alignment="top" translatesAutoresizingMaskIntoConstraints="NO" id="dns-6D-Vfh">
                                                    <rect key="frame" x="84" y="25" width="231" height="50"/>
                                                    <subviews>
                                                        <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="chZ-PA-wUv">
                                                            <rect key="frame" x="0.0" y="0.0" width="231" height="33"/>
                                                            <fontDescription key="fontDescription" style="UICTFontTextStyleTitle2"/>
                                                            <color key="textColor" red="1" green="0.73333333333333328" blue="0.57647058823529407" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                            <nil key="highlightedColor"/>
                                                        </label>
                                                        <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="252" text="Hashtag Label" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="BFO-am-tTy">
                                                            <rect key="frame" x="0.0" y="33" width="231" height="17"/>
                                                            <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                                            <color key="textColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                                            <nil key="highlightedColor"/>
                                                        </label>
                                                    </subviews>
                                                    <constraints>
                                                        <constraint firstItem="BFO-am-tTy" firstAttribute="width" secondItem="chZ-PA-wUv" secondAttribute="width" id="v9W-wt-uO7"/>
                                                        <constraint firstItem="chZ-PA-wUv" firstAttribute="width" secondItem="dns-6D-Vfh" secondAttribute="width" id="yUZ-p6-Gcl"/>
                                                    </constraints>
                                                </stackView>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="k4j-SW-aWu">
                                                    <rect key="frame" x="320" y="0.0" width="47" height="100"/>
                                                    <fontDescription key="fontDescription" type="boldSystem" pointSize="19"/>
                                                    <state key="normal" title="...">
                                                        <color key="titleColor" red="1" green="0.73333333333333328" blue="0.57647058823529407" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    </state>
                                                    <connections>
                                                        <action selector="showTagView:" destination="gpg-0c-vNo" eventType="touchUpInside" id="vlJ-R3-B0U"/>
                                                    </connections>
                                                </button>
                                            </subviews>
                                            <color key="backgroundColor" red="0.12941176470588234" green="0.12941176470588234" blue="0.12941176470588234" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                            <constraints>
                                                <constraint firstItem="D1r-k6-XHX" firstAttribute="height" secondItem="yHq-7a-Pty" secondAttribute="height" multiplier="0.5" constant="1" id="0TK-Bp-zuZ"/>
                                                <constraint firstItem="dns-6D-Vfh" firstAttribute="centerY" secondItem="yHq-7a-Pty" secondAttribute="centerY" id="17s-Q0-zJE"/>
                                                <constraint firstItem="k4j-SW-aWu" firstAttribute="height" secondItem="yHq-7a-Pty" secondAttribute="height" id="2wK-Ky-RnP"/>
                                                <constraint firstItem="k4j-SW-aWu" firstAttribute="top" secondItem="yHq-7a-Pty" secondAttribute="topMargin" constant="-8" id="3IY-US-LZv"/>
                                                <constraint firstItem="D1r-k6-XHX" firstAttribute="leading" secondItem="yHq-7a-Pty" secondAttribute="leadingMargin" constant="10" id="4Go-nF-lKi"/>
                                                <constraint firstItem="k4j-SW-aWu" firstAttribute="width" secondItem="yHq-7a-Pty" secondAttribute="width" multiplier="1/8" id="Fir-r3-zKk"/>
                                                <constraint firstItem="dns-6D-Vfh" firstAttribute="height" secondItem="yHq-7a-Pty" secondAttribute="height" multiplier="0.5" id="Ghy-WR-zaJ"/>
                                                <constraint firstItem="dns-6D-Vfh" firstAttribute="leading" secondItem="D1r-k6-XHX" secondAttribute="trailing" constant="15" id="NJH-uS-RvS"/>
                                                <constraint firstItem="D1r-k6-XHX" firstAttribute="top" secondItem="k4j-SW-aWu" secondAttribute="top" constant="25" id="Q4i-VD-6V2"/>
                                                <constraint firstItem="k4j-SW-aWu" firstAttribute="leading" secondItem="dns-6D-Vfh" secondAttribute="trailing" constant="5" id="vLQ-p5-Dqm"/>
                                                <constraint firstItem="k4j-SW-aWu" firstAttribute="trailing" secondItem="yHq-7a-Pty" secondAttribute="trailingMargin" id="z4i-qI-Skh"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <connections>
                                            <outlet property="songImageView" destination="D1r-k6-XHX" id="5XL-f7-0u1"/>
                                            <outlet property="songNameLabel" destination="chZ-PA-wUv" id="3pP-qf-1hZ"/>
                                            <outlet property="songTagsLabel" destination="BFO-am-tTy" id="XFw-gI-3SS"/>
                                        </connections>
                                    </tableViewCell>
                                </prototypes>
                            </tableView>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="zL8-lO-N2F">
                                <rect key="frame" x="0.0" y="667" width="375" height="518"/>
                                <subviews>
                                    <imageView clipsSubviews="YES" userInteractionEnabled="NO" contentMode="scaleAspectFill" horizontalHuggingPriority="251" verticalHuggingPriority="251" image="music.jpg" translatesAutoresizingMaskIntoConstraints="NO" id="iMZ-2X-QIN">
                                        <rect key="frame" x="15" y="15" width="57" height="57"/>
                                        <constraints>
                                            <constraint firstAttribute="width" secondItem="iMZ-2X-QIN" secondAttribute="height" multiplier="1:1" id="3Qg-ns-gV0"/>
                                        </constraints>
                                    </imageView>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="5H2-xV-zuI">
                                        <rect key="frame" x="87" y="15" width="288" height="57"/>
                                        <fontDescription key="fontDescription" style="UICTFontTextStyleTitle3"/>
                                        <nil key="textColor"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="Kfa-i4-XTu">
                                        <rect key="frame" x="36" y="92" width="279" height="30"/>
                                        <color key="backgroundColor" cocoaTouchSystemColor="tableCellGroupedBackgroundColor"/>
                                        <nil key="textColor"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                        <textInputTraits key="textInputTraits"/>
                                        <connections>
                                            <outlet property="delegate" destination="gpg-0c-vNo" id="REq-Uh-5oH"/>
                                        </connections>
                                    </textField>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="hkq-pU-pAv">
                                        <rect key="frame" x="325" y="90" width="30" height="30"/>
                                        <constraints>
                                            <constraint firstAttribute="width" constant="30" id="CUn-XA-rJs"/>
                                            <constraint firstAttribute="width" secondItem="hkq-pU-pAv" secondAttribute="height" multiplier="1:1" id="ND4-cj-uy1"/>
                                        </constraints>
                                        <fontDescription key="fontDescription" type="system" pointSize="32"/>
                                        <inset key="contentEdgeInsets" minX="0.0" minY="0.0" maxX="0.0" maxY="1"/>
                                        <state key="normal" title="+">
                                            <color key="titleColor" red="1" green="0.54117647058823526" blue="0.396078431372549" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <action selector="addTagButtonPressed:" destination="gpg-0c-vNo" eventType="touchUpInside" id="Zl8-2J-FmV"/>
                                        </connections>
                                    </button>
                                    <collectionView clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="scaleToFill" dataMode="prototypes" translatesAutoresizingMaskIntoConstraints="NO" id="i5D-vG-diC" customClass="CollectionView" customModule="Tagify" customModuleProvider="target">
                                        <rect key="frame" x="8" y="132" width="359" height="386"/>
                                        <color key="backgroundColor" red="0.28235294117647058" green="0.28235294117647058" blue="0.28235294117647058" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <collectionViewFlowLayout key="collectionViewLayout" minimumLineSpacing="10" minimumInteritemSpacing="10" id="ENJ-v8-751">
                                            <size key="itemSize" width="121" height="47"/>
                                            <size key="headerReferenceSize" width="0.0" height="0.0"/>
                                            <size key="footerReferenceSize" width="0.0" height="0.0"/>
                                            <inset key="sectionInset" minX="5" minY="5" maxX="5" maxY="5"/>
                                        </collectionViewFlowLayout>
                                        <cells>
                                            <collectionViewCell opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" preservesSuperviewLayoutMargins="YES" reuseIdentifier="TagReuseCell" id="xfZ-RI-yQb" customClass="CollectionViewCell" customModule="Tagify" customModuleProvider="target">
                                                <rect key="frame" x="5" y="5" width="120" height="50"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <view key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center">
                                                    <rect key="frame" x="0.0" y="0.0" width="120" height="50"/>
                                                    <autoresizingMask key="autoresizingMask"/>
                                                    <subviews>
                                                        <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Label" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="NXF-SH-DJZ">
                                                            <rect key="frame" x="0.0" y="0.0" width="120" height="50"/>
                                                            <color key="backgroundColor" red="1" green="0.73333333329999995" blue="0.57647058819999997" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                            <fontDescription key="fontDescription" style="UICTFontTextStyleBody"/>
                                                            <nil key="textColor"/>
                                                            <nil key="highlightedColor"/>
                                                        </label>
                                                    </subviews>
                                                </view>
                                                <color key="backgroundColor" red="1" green="0.73333333329999995" blue="0.57647058819999997" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <color key="tintColor" red="0.28235294119999998" green="0.28235294119999998" blue="0.28235294119999998" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <constraints>
                                                    <constraint firstAttribute="trailing" secondItem="NXF-SH-DJZ" secondAttribute="trailing" id="Bkh-EL-cWZ"/>
                                                    <constraint firstAttribute="bottom" secondItem="NXF-SH-DJZ" secondAttribute="bottom" id="Gau-sq-A8U"/>
                                                    <constraint firstItem="NXF-SH-DJZ" firstAttribute="top" secondItem="xfZ-RI-yQb" secondAttribute="top" id="XWy-Tv-RMy"/>
                                                    <constraint firstItem="NXF-SH-DJZ" firstAttribute="leading" secondItem="xfZ-RI-yQb" secondAttribute="leading" id="wCk-X2-nf5"/>
                                                </constraints>
                                                <size key="customSize" width="120" height="50"/>
                                                <connections>
                                                    <outlet property="tagLabel" destination="NXF-SH-DJZ" id="5d3-0y-pr1"/>
                                                </connections>
                                            </collectionViewCell>
                                        </cells>
                                        <connections>
                                            <outlet property="dataSource" destination="gpg-0c-vNo" id="nWJ-aK-Klo"/>
                                            <outlet property="delegate" destination="gpg-0c-vNo" id="u1N-4I-aiD"/>
                                        </connections>
                                    </collectionView>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" adjustsImageWhenHighlighted="NO" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="IdH-Bm-H2H">
                                        <rect key="frame" x="144" y="410" width="88" height="88"/>
                                        <state key="normal" image="Cross Buttomwith shadow.png"/>
                                        <connections>
                                            <action selector="closeButtonPressed:" destination="gpg-0c-vNo" eventType="touchUpInside" id="tBS-JG-xze"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="0.28235294117647058" green="0.28235294117647058" blue="0.28235294117647058" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="5H2-xV-zuI" firstAttribute="trailing" secondItem="zL8-lO-N2F" secondAttribute="trailing" id="2Ot-cI-YVR"/>
                                    <constraint firstItem="Kfa-i4-XTu" firstAttribute="top" secondItem="iMZ-2X-QIN" secondAttribute="bottom" constant="20" id="6JD-df-AaK"/>
                                    <constraint firstItem="Kfa-i4-XTu" firstAttribute="trailing" secondItem="hkq-pU-pAv" secondAttribute="leading" constant="-10" id="79n-Uc-Avd"/>
                                    <constraint firstItem="IdH-Bm-H2H" firstAttribute="centerX" secondItem="zL8-lO-N2F" secondAttribute="centerX" id="AFi-yJ-mK4"/>
                                    <constraint firstItem="hkq-pU-pAv" firstAttribute="top" secondItem="iMZ-2X-QIN" secondAttribute="bottom" constant="18" id="B5k-ki-dqL"/>
                                    <constraint firstItem="iMZ-2X-QIN" firstAttribute="width" secondItem="zL8-lO-N2F" secondAttribute="width" multiplier="0.15" id="CZi-0x-gRi"/>
                                    <constraint firstItem="i5D-vG-diC" firstAttribute="leading" secondItem="zL8-lO-N2F" secondAttribute="leading" constant="8" id="EpF-km-yJP"/>
                                    <constraint firstItem="i5D-vG-diC" firstAttribute="bottom" secondItem="zL8-lO-N2F" secondAttribute="bottom" id="N77-Nr-IU3"/>
                                    <constraint firstItem="5H2-xV-zuI" firstAttribute="top" secondItem="iMZ-2X-QIN" secondAttribute="top" id="PIM-q5-c6g"/>
                                    <constraint firstItem="5H2-xV-zuI" firstAttribute="bottom" secondItem="iMZ-2X-QIN" secondAttribute="bottom" id="U7p-hv-vrq"/>
                                    <constraint firstItem="i5D-vG-diC" firstAttribute="top" secondItem="Kfa-i4-XTu" secondAttribute="bottom" constant="10" id="UEc-xx-iKd"/>
                                    <constraint firstItem="iMZ-2X-QIN" firstAttribute="top" secondItem="zL8-lO-N2F" secondAttribute="top" constant="15" id="Ua0-Km-HgF"/>
                                    <constraint firstItem="Kfa-i4-XTu" firstAttribute="leading" secondItem="zL8-lO-N2F" secondAttribute="leading" constant="36" id="YeU-sM-TgI"/>
                                    <constraint firstItem="i5D-vG-diC" firstAttribute="trailing" secondItem="zL8-lO-N2F" secondAttribute="trailing" constant="-8" id="ZHn-rq-q71"/>
                                    <constraint firstItem="hkq-pU-pAv" firstAttribute="trailing" secondItem="zL8-lO-N2F" secondAttribute="trailing" constant="-20" id="a5z-U8-pCc"/>
                                    <constraint firstItem="iMZ-2X-QIN" firstAttribute="leading" secondItem="zL8-lO-N2F" secondAttribute="leading" constant="15" id="dqm-7Z-K1H"/>
                                    <constraint firstItem="5H2-xV-zuI" firstAttribute="leading" secondItem="iMZ-2X-QIN" secondAttribute="trailing" constant="15" id="vFJ-mT-iHv"/>
                                    <constraint firstItem="IdH-Bm-H2H" firstAttribute="bottom" secondItem="zL8-lO-N2F" secondAttribute="bottom" constant="-20" id="zUv-Ac-J0x"/>
                                </constraints>
                            </view>
                        </subviews>
                        <color key="backgroundColor" red="0.12941176470588234" green="0.12941176470588234" blue="0.12941176470588234" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="zL8-lO-N2F" firstAttribute="trailing" secondItem="Tg3-OL-Bgc" secondAttribute="trailing" id="3MY-yt-YDC"/>
                            <constraint firstItem="A2Q-gh-CLO" firstAttribute="leading" secondItem="Tg3-OL-Bgc" secondAttribute="leading" id="3af-Yz-Tsn"/>
                            <constraint firstItem="VUH-iz-7tk" firstAttribute="trailing" secondItem="9ag-Qr-jG0" secondAttribute="trailing" id="9Cz-Dx-YvG"/>
                            <constraint firstItem="zL8-lO-N2F" firstAttribute="top" secondItem="Tg3-OL-Bgc" secondAttribute="bottomMargin" id="CXI-Da-nA7"/>
                            <constraint firstItem="VUH-iz-7tk" firstAttribute="bottom" secondItem="A2Q-gh-CLO" secondAttribute="top" id="JME-Os-jyM"/>
                            <constraint firstItem="zL8-lO-N2F" firstAttribute="top" secondItem="VUH-iz-7tk" secondAttribute="top" id="Pu6-Sf-gPU"/>
                            <constraint firstItem="A2Q-gh-CLO" firstAttribute="width" secondItem="Tg3-OL-Bgc" secondAttribute="width" id="R0K-W0-JHl"/>
                            <constraint firstItem="9ag-Qr-jG0" firstAttribute="leading" secondItem="Tg3-OL-Bgc" secondAttribute="leading" id="RQ3-tr-DfL"/>
                            <constraint firstItem="9ag-Qr-jG0" firstAttribute="top" secondItem="Ctd-S5-1yH" secondAttribute="bottom" id="Rb8-3K-I3p"/>
                            <constraint firstItem="hhW-VI-yLf" firstAttribute="top" secondItem="A2Q-gh-CLO" secondAttribute="bottom" id="Rcd-ok-kXc"/>
                            <constraint firstItem="9ag-Qr-jG0" firstAttribute="width" secondItem="Tg3-OL-Bgc" secondAttribute="width" id="TcY-4u-d7A"/>
                            <constraint firstItem="VUH-iz-7tk" firstAttribute="leading" secondItem="Tg3-OL-Bgc" secondAttribute="leading" id="Wa1-L4-LE4"/>
                            <constraint firstItem="VUH-iz-7tk" firstAttribute="top" secondItem="9ag-Qr-jG0" secondAttribute="bottom" id="Xjl-96-F3a"/>
                            <constraint firstItem="zL8-lO-N2F" firstAttribute="height" secondItem="VUH-iz-7tk" secondAttribute="height" constant="80" id="xR0-gt-CsW"/>
                            <constraint firstItem="zL8-lO-N2F" firstAttribute="leading" secondItem="Tg3-OL-Bgc" secondAttribute="leading" id="zR9-vT-RZc"/>
                        </constraints>
                        <variation key="default">
                            <mask key="constraints">
                                <exclude reference="Pu6-Sf-gPU"/>
                            </mask>
                        </variation>
                    </view>
                    <tabBarItem key="tabBarItem" title="Songs" id="KQw-Fy-KZo"/>
                    <navigationItem key="navigationItem" title="Tagify" id="lK4-L8-MEW">
                        <barButtonItem key="rightBarButtonItem" style="plain" id="Thj-VH-Xts">
                            <button key="customView" opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" id="og0-pr-9iJ">
                                <rect key="frame" x="328" y="7" width="31" height="30"/>
                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="30" id="e5G-f6-Df8"/>
                                </constraints>
                                <size key="titleShadowOffset" width="22" height="0.0"/>
                                <state key="normal" image="setting1.png"/>
                            </button>
                        </barButtonItem>
                    </navigationItem>
                    <connections>
                        <outlet property="addTagTextField" destination="Kfa-i4-XTu" id="bwi-LW-Osb"/>
                        <outlet property="collectionView" destination="i5D-vG-diC" id="O8p-Gg-XsY"/>
                        <outlet property="navigationItem" destination="lK4-L8-MEW" id="t9e-HM-79j"/>
                        <outlet property="playButton" destination="gru-LO-ILg" id="pU1-Kq-Q8E"/>
                        <outlet property="searchSongTextField" destination="Ixg-zh-rXM" id="Q2n-vZ-fRg"/>
                        <outlet property="tableView" destination="VUH-iz-7tk" id="LYW-hA-922"/>
                        <outlet property="tagView" destination="zL8-lO-N2F" id="fRU-2n-4Iq"/>
                        <outlet property="tagViewSlideDownConstraint" destination="CXI-Da-nA7" id="tqJ-UW-JJ0"/>
                        <outlet property="tagViewSlideUpConstraint" destination="Pu6-Sf-gPU" id="WQA-UO-9BJ"/>
                        <outlet property="tagViewSongImageView" destination="iMZ-2X-QIN" id="uq5-Pc-ij7"/>
                        <outlet property="tagViewSongLabel" destination="5H2-xV-zuI" id="eFG-rA-AbN"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="8zw-VO-gD8" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1942" y="470"/>
        </scene>
        <!--Scope-->
        <scene sceneID="b2w-fG-e15">
            <objects>
                <viewController id="4iD-uF-Qnd" customClass="ScopeViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="LtU-cG-rjV"/>
                        <viewControllerLayoutGuide type="bottom" id="d90-mM-WmX"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="sS7-cx-25m">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="1Cr-S7-nPD">
                                <rect key="frame" x="0.0" y="0.0" width="375" height="618"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="9ma-60-ie8">
                                        <rect key="frame" x="0.0" y="28" width="375" height="44"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="9ma-60-ie8" id="kZn-ZJ-9gY">
                                            <rect key="frame" x="0.0" y="0.0" width="375" height="44"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                        </tableViewCellContentView>
                                    </tableViewCell>
                                </prototypes>
                            </tableView>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstItem="1Cr-S7-nPD" firstAttribute="top" secondItem="sS7-cx-25m" secondAttribute="top" id="9NX-fi-gAn"/>
                            <constraint firstAttribute="trailing" secondItem="1Cr-S7-nPD" secondAttribute="trailing" id="Ah6-EH-p6J"/>
                            <constraint firstItem="d90-mM-WmX" firstAttribute="top" secondItem="1Cr-S7-nPD" secondAttribute="bottom" id="T3l-U7-IMr"/>
                            <constraint firstItem="1Cr-S7-nPD" firstAttribute="leading" secondItem="sS7-cx-25m" secondAttribute="leading" id="nmN-GP-Rs9"/>
                        </constraints>
                    </view>
                    <tabBarItem key="tabBarItem" title="Scope" id="kP3-om-VI9"/>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="QHV-Hn-rDm" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="2753" y="849"/>
        </scene>
        <!--Setting-->
        <scene sceneID="yeS-re-8WA">
            <objects>
                <viewController id="bcU-6l-Lbf" customClass="SettingsViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="Qoe-U2-9Eo"/>
                        <viewControllerLayoutGuide type="bottom" id="ekG-WU-CDn"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="Oi8-sp-8P1">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <imageView clipsSubviews="YES" contentMode="scaleAspectFill" horizontalHuggingPriority="251" verticalHuggingPriority="251" image="music.jpg" translatesAutoresizingMaskIntoConstraints="NO" id="bTh-fJ-TW8">
                                <rect key="frame" x="137" y="90" width="100" height="100"/>
                                <constraints>
                                    <constraint firstAttribute="width" constant="100" id="5Ev-cv-3DH"/>
                                    <constraint firstAttribute="height" secondItem="bTh-fJ-TW8" secondAttribute="width" multiplier="1:1" id="E8l-sJ-7W6"/>
                                </constraints>
                            </imageView>
                            <stackView opaque="NO" contentMode="scaleToFill" axis="vertical" alignment="center" translatesAutoresizingMaskIntoConstraints="NO" id="CPC-Rv-42V">
                                <rect key="frame" x="19" y="255" width="337.5" height="262"/>
                                <subviews>
                                    <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="sAO-TZ-eot">
                                        <rect key="frame" x="0.0" y="0.0" width="337.5" height="50"/>
                                        <subviews>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="User Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="fTT-m9-AAa">
                                                <rect key="frame" x="20" y="15" width="86" height="21"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                <color key="textColor" red="0.76862745098039209" green="0.76862745098039209" blue="0.76862745098039209" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="VMG-V5-7cy">
                                                <rect key="frame" x="300" y="14" width="15" height="22"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <state key="normal" title="Button" image="Next Button.png"/>
                                            </button>
                                            <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="rue-kw-fGr">
                                                <rect key="frame" x="0.0" y="44" width="338" height="1"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                            </view>
                                        </subviews>
                                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </view>
                                    <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="l2W-j1-BCG">
                                        <rect key="frame" x="0.0" y="50" width="337.5" height="50"/>
                                        <subviews>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Followers" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="8CX-0r-9Ls">
                                                <rect key="frame" x="20" y="15" width="73" height="21"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="0Sa-BQ-tRI">
                                                <rect key="frame" x="300" y="14" width="15" height="22"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <state key="normal" title="Button" image="Next Button.png"/>
                                            </button>
                                            <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="CtY-nZ-dgT">
                                                <rect key="frame" x="0.0" y="44" width="338" height="1"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                            </view>
                                        </subviews>
                                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </view>
                                    <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="5h5-bc-bPC">
                                        <rect key="frame" x="0.0" y="100" width="337.5" height="50"/>
                                        <subviews>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Following" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="gO7-dx-cfI">
                                                <rect key="frame" x="20" y="15" width="73" height="21"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="cQc-5t-UGH">
                                                <rect key="frame" x="300" y="14" width="15" height="22"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <state key="normal" title="Button" image="Next Button.png"/>
                                            </button>
                                            <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="t3k-z8-hOL">
                                                <rect key="frame" x="0.0" y="44" width="338" height="1"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                            </view>
                                        </subviews>
                                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </view>
                                    <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="XO7-f6-3XJ">
                                        <rect key="frame" x="0.0" y="150" width="337.5" height="50"/>
                                        <subviews>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Theme Color" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="GEU-d7-NTq">
                                                <rect key="frame" x="20" y="15" width="99" height="21"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <button opaque="NO" contentMode="scaleToFill" fixedFrame="YES" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="G9y-tp-NYe">
                                                <rect key="frame" x="300" y="14" width="15" height="22"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <state key="normal" title="Button" image="Next Button.png"/>
                                            </button>
                                            <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="g0E-bF-xON">
                                                <rect key="frame" x="0.0" y="44" width="338" height="1"/>
                                                <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                            </view>
                                        </subviews>
                                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </view>
                                    <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="Bah-8f-PDM">
                                        <rect key="frame" x="0.0" y="200" width="337.5" height="62"/>
                                        <subviews>
                                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="xLL-TA-KUT">
                                                <rect key="frame" x="139.5" y="15" width="58" height="33"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                <state key="normal" title="Log Off">
                                                    <color key="titleColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                </state>
                                                <connections>
                                                    <action selector="logOffPressed:" destination="bcU-6l-Lbf" eventType="touchUpInside" id="YGa-lk-adY"/>
                                                </connections>
                                            </button>
                                        </subviews>
                                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <constraints>
                                            <constraint firstItem="xLL-TA-KUT" firstAttribute="top" secondItem="Bah-8f-PDM" secondAttribute="top" constant="15" id="DV5-06-266"/>
                                            <constraint firstItem="xLL-TA-KUT" firstAttribute="centerY" secondItem="Bah-8f-PDM" secondAttribute="centerY" id="U9D-Ld-WUQ"/>
                                            <constraint firstItem="xLL-TA-KUT" firstAttribute="centerX" secondItem="Bah-8f-PDM" secondAttribute="centerX" id="utF-e5-D6e"/>
                                        </constraints>
                                    </view>
                                </subviews>
                                <constraints>
                                    <constraint firstItem="l2W-j1-BCG" firstAttribute="width" secondItem="CPC-Rv-42V" secondAttribute="width" id="19o-oV-cGA"/>
                                    <constraint firstItem="XO7-f6-3XJ" firstAttribute="width" secondItem="CPC-Rv-42V" secondAttribute="width" id="318-Wj-a8i"/>
                                    <constraint firstItem="Bah-8f-PDM" firstAttribute="width" secondItem="CPC-Rv-42V" secondAttribute="width" id="4CS-2V-W3N"/>
                                    <constraint firstItem="sAO-TZ-eot" firstAttribute="width" secondItem="CPC-Rv-42V" secondAttribute="width" id="Ae4-fC-hvR"/>
                                    <constraint firstItem="5h5-bc-bPC" firstAttribute="top" secondItem="CPC-Rv-42V" secondAttribute="top" constant="100" id="RMX-DJ-zdK"/>
                                    <constraint firstItem="XO7-f6-3XJ" firstAttribute="top" secondItem="CPC-Rv-42V" secondAttribute="top" constant="150" id="Wqv-e1-fRm"/>
                                    <constraint firstItem="5h5-bc-bPC" firstAttribute="width" secondItem="CPC-Rv-42V" secondAttribute="width" id="ds6-hQ-mla"/>
                                    <constraint firstItem="l2W-j1-BCG" firstAttribute="top" secondItem="CPC-Rv-42V" secondAttribute="top" constant="50" id="jVC-WU-KO1"/>
                                    <constraint firstItem="Bah-8f-PDM" firstAttribute="top" secondItem="CPC-Rv-42V" secondAttribute="top" constant="200" id="k9s-90-jdg"/>
                                </constraints>
                            </stackView>
                            <containerView opaque="NO" contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="35Z-TK-faa">
                                <rect key="frame" x="18.5" y="255" width="337.5" height="200"/>
                                <constraints>
                                    <constraint firstAttribute="height" constant="200" id="adN-89-DmY"/>
                                </constraints>
                                <connections>
                                    <segue destination="HU6-4M-niP" kind="embed" id="ACd-xS-Ddv"/>
                                </connections>
                            </containerView>
                            <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="H0x-bt-fmL">
                                <rect key="frame" x="158" y="473" width="58" height="33"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <state key="normal" title="Log Off">
                                    <color key="titleColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                </state>
                                <connections>
                                    <action selector="logOffPressed:" destination="bcU-6l-Lbf" eventType="touchUpInside" id="Ney-l1-bk5"/>
                                </connections>
                            </button>
                        </subviews>
                        <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="bTh-fJ-TW8" firstAttribute="centerX" secondItem="Oi8-sp-8P1" secondAttribute="centerX" id="0Rt-iu-w83"/>
                            <constraint firstItem="35Z-TK-faa" firstAttribute="centerX" secondItem="Oi8-sp-8P1" secondAttribute="centerX" id="DAX-PX-15s"/>
                            <constraint firstItem="CPC-Rv-42V" firstAttribute="width" secondItem="Oi8-sp-8P1" secondAttribute="width" multiplier="0.9" id="N2F-K9-W4j"/>
                            <constraint firstItem="35Z-TK-faa" firstAttribute="top" secondItem="bTh-fJ-TW8" secondAttribute="bottom" constant="65" id="bw2-EW-vEe"/>
                            <constraint firstItem="bTh-fJ-TW8" firstAttribute="top" secondItem="Qoe-U2-9Eo" secondAttribute="bottom" constant="70" id="mON-LZ-7o6"/>
                            <constraint firstItem="CPC-Rv-42V" firstAttribute="centerX" secondItem="Oi8-sp-8P1" secondAttribute="centerX" id="sA9-3p-7dX"/>
                            <constraint firstItem="H0x-bt-fmL" firstAttribute="centerX" secondItem="Oi8-sp-8P1" secondAttribute="centerX" id="swa-mR-XrQ"/>
                            <constraint firstItem="CPC-Rv-42V" firstAttribute="top" secondItem="bTh-fJ-TW8" secondAttribute="bottom" constant="65" id="trY-OJ-0mu"/>
                            <constraint firstItem="35Z-TK-faa" firstAttribute="width" secondItem="Oi8-sp-8P1" secondAttribute="width" multiplier="0.9" id="uvw-nf-10i"/>
                            <constraint firstItem="H0x-bt-fmL" firstAttribute="top" secondItem="35Z-TK-faa" secondAttribute="bottom" constant="18" id="yeJ-O1-cfd"/>
                        </constraints>
                        <variation key="default">
                            <mask key="subviews">
                                <exclude reference="CPC-Rv-42V"/>
                            </mask>
                        </variation>
                    </view>
                    <tabBarItem key="tabBarItem" title="Setting" id="Xb6-2p-fQO"/>
                    <connections>
                        <outlet property="iconImageView" destination="bTh-fJ-TW8" id="y3x-BJ-BmT"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="a2C-e0-nrh" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1725.5999999999999" y="1485.6071964017992"/>
        </scene>
        <!--Username View Controller-->
        <scene sceneID="kSW-fc-AvG">
            <objects>
                <viewController id="0oc-Ap-1Um" customClass="UsernameViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="F6M-lB-nnJ"/>
                        <viewControllerLayoutGuide type="bottom" id="uFW-DF-JCx"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="NKH-hu-jCx">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="1S7-sN-foX">
                                <rect key="frame" x="0.0" y="0.0" width="375" height="53.5"/>
                                <subviews>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="ryU-cX-BRA">
                                        <rect key="frame" x="20" y="0.5" width="30" height="53.5"/>
                                        <constraints>
                                            <constraint firstAttribute="width" constant="30" id="yz0-zB-bQ2"/>
                                        </constraints>
                                        <fontDescription key="fontDescription" type="system" pointSize="18"/>
                                        <state key="normal" image="Previous Button.png"/>
                                        <connections>
                                            <segue destination="Ev6-aE-Yno" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" customModuleProvider="target" unwindAction="backToSettingsWithSegue:" id="noW-lf-T4m"/>
                                        </connections>
                                    </button>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="1U1-0k-IkH">
                                        <rect key="frame" x="165" y="16" width="45" height="21"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="5iD-eG-xgn">
                                        <rect key="frame" x="321" y="11.5" width="34" height="30"/>
                                        <state key="normal" title="Save">
                                            <color key="titleColor" red="1" green="0.73333333329999995" blue="0.57647058819999997" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <segue destination="Ev6-aE-Yno" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" customModuleProvider="target" unwindAction="saveUserNameBackToSettingsWithSegue:" id="GUS-OB-fiO"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="0.12941176470588234" green="0.12941176470588234" blue="0.12941176470588234" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="5iD-eG-xgn" firstAttribute="centerY" secondItem="1S7-sN-foX" secondAttribute="centerY" id="7bR-KS-T62"/>
                                    <constraint firstAttribute="trailing" secondItem="5iD-eG-xgn" secondAttribute="trailing" constant="20" id="Dav-nW-tGy"/>
                                    <constraint firstItem="1U1-0k-IkH" firstAttribute="centerX" secondItem="1S7-sN-foX" secondAttribute="centerX" id="GMG-ZD-Ce4"/>
                                    <constraint firstItem="ryU-cX-BRA" firstAttribute="leading" secondItem="1S7-sN-foX" secondAttribute="leading" constant="20" id="HIR-0d-k5a"/>
                                    <constraint firstItem="1U1-0k-IkH" firstAttribute="centerY" secondItem="1S7-sN-foX" secondAttribute="centerY" id="KsX-Ao-5pD"/>
                                    <constraint firstItem="ryU-cX-BRA" firstAttribute="height" secondItem="1S7-sN-foX" secondAttribute="height" id="PEU-g5-7kf"/>
                                    <constraint firstItem="ryU-cX-BRA" firstAttribute="centerY" secondItem="1S7-sN-foX" secondAttribute="centerY" id="Vdu-wt-g4U"/>
                                </constraints>
                            </view>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="camille_zcy" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="bUW-nv-ag2" userLabel="New Name">
                                <rect key="frame" x="28.5" y="100" width="318.5" height="46.5"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                <textInputTraits key="textInputTraits"/>
                                <connections>
                                    <outlet property="delegate" destination="0oc-Ap-1Um" id="tDg-7P-VxR"/>
                                </connections>
                            </textField>
                        </subviews>
                        <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="1S7-sN-foX" firstAttribute="top" secondItem="F6M-lB-nnJ" secondAttribute="bottom" id="B8A-XK-upI"/>
                            <constraint firstItem="bUW-nv-ag2" firstAttribute="width" secondItem="NKH-hu-jCx" secondAttribute="width" multiplier="0.85" id="HxA-6r-Pnd"/>
                            <constraint firstItem="1S7-sN-foX" firstAttribute="height" secondItem="NKH-hu-jCx" secondAttribute="height" multiplier="0.08" id="NKT-Ih-bLW"/>
                            <constraint firstItem="1S7-sN-foX" firstAttribute="leading" secondItem="NKH-hu-jCx" secondAttribute="leading" id="Otc-jY-x7B"/>
                            <constraint firstAttribute="trailing" secondItem="1S7-sN-foX" secondAttribute="trailing" id="gsw-MY-DJL"/>
                            <constraint firstItem="bUW-nv-ag2" firstAttribute="centerX" secondItem="NKH-hu-jCx" secondAttribute="centerX" id="k5H-2t-zfn"/>
                            <constraint firstItem="bUW-nv-ag2" firstAttribute="top" secondItem="NKH-hu-jCx" secondAttribute="topMargin" constant="100" id="qPr-7D-5Se"/>
                            <constraint firstItem="bUW-nv-ag2" firstAttribute="height" secondItem="NKH-hu-jCx" secondAttribute="height" multiplier="0.07" id="wnf-0K-DGG"/>
                        </constraints>
                    </view>
                    <connections>
                        <outlet property="usernameTextField" destination="bUW-nv-ag2" id="Eyi-iu-adC"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="owl-uS-17l" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <exit id="Ev6-aE-Yno" userLabel="Exit" sceneMemberID="exit"/>
            </objects>
            <point key="canvasLocation" x="3538" y="975"/>
        </scene>
        <!--Following View Controller-->
        <scene sceneID="N7q-fI-7PH">
            <objects>
                <viewController id="Z9R-hh-hD6" customClass="FollowingViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="a87-7c-TsG"/>
                        <viewControllerLayoutGuide type="bottom" id="bJR-Bd-wmj"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="2HC-Sy-UMh">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="Hje-5f-8sm">
                                <rect key="frame" x="0.0" y="0.0" width="375" height="53.5"/>
                                <subviews>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Following" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="8Oy-nC-ql4">
                                        <rect key="frame" x="151" y="16" width="73" height="21"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="qTX-cP-Vh2">
                                        <rect key="frame" x="20" y="16" width="15" height="22"/>
                                        <state key="normal" image="Previous Button.png"/>
                                        <connections>
                                            <segue destination="zsT-yG-kYM" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" customModuleProvider="target" unwindAction="backToSettingsWithSegue:" id="n9B-0V-Q1G"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="8Oy-nC-ql4" firstAttribute="centerX" secondItem="Hje-5f-8sm" secondAttribute="centerX" id="CNQ-U4-btQ"/>
                                    <constraint firstItem="8Oy-nC-ql4" firstAttribute="centerY" secondItem="Hje-5f-8sm" secondAttribute="centerY" id="RPW-aH-UEx"/>
                                    <constraint firstItem="qTX-cP-Vh2" firstAttribute="leading" secondItem="Hje-5f-8sm" secondAttribute="leading" constant="20" id="Urp-Gh-nc7"/>
                                    <constraint firstItem="qTX-cP-Vh2" firstAttribute="centerY" secondItem="Hje-5f-8sm" secondAttribute="centerY" id="zqv-Xv-xfr"/>
                                </constraints>
                            </view>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Search" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="CtP-dy-V5D">
                                <rect key="frame" x="9.5" y="63.5" width="356.5" height="30"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="piN-hj-YIZ">
                                <rect key="frame" x="0.0" y="103.5" width="375" height="563.5"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                <inset key="separatorInset" minX="15" minY="0.0" maxX="15" maxY="0.0"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" reuseIdentifier="FollowingCell" id="ljI-nJ-ms8">
                                        <rect key="frame" x="0.0" y="28" width="375" height="44"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="ljI-nJ-ms8" id="qkY-6N-MPL">
                                            <rect key="frame" x="0.0" y="0.0" width="375" height="43"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <imageView userInteractionEnabled="NO" contentMode="scaleToFill" horizontalHuggingPriority="251" verticalHuggingPriority="251" image="music.jpg" translatesAutoresizingMaskIntoConstraints="NO" id="hH5-cc-nsR">
                                                    <rect key="frame" x="20" y="7" width="30" height="30"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" constant="30" id="8Zd-lv-6G1"/>
                                                        <constraint firstAttribute="height" constant="30" id="Gtr-qc-ZEf"/>
                                                    </constraints>
                                                </imageView>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="EFh-nB-Pcg">
                                                    <rect key="frame" x="90" y="11" width="45" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <nil key="textColor"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="hH5-cc-nsR" firstAttribute="centerY" secondItem="qkY-6N-MPL" secondAttribute="centerY" id="A7W-gz-6bO"/>
                                                <constraint firstItem="hH5-cc-nsR" firstAttribute="leading" secondItem="qkY-6N-MPL" secondAttribute="leading" constant="20" id="TEy-V4-RMA"/>
                                                <constraint firstItem="EFh-nB-Pcg" firstAttribute="leading" secondItem="hH5-cc-nsR" secondAttribute="trailing" constant="40" id="VZb-sT-fqP"/>
                                                <constraint firstItem="EFh-nB-Pcg" firstAttribute="centerY" secondItem="qkY-6N-MPL" secondAttribute="centerYWithinMargins" id="oUm-mQ-K4n"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                    </tableViewCell>
                                </prototypes>
                                <connections>
                                    <outlet property="dataSource" destination="Z9R-hh-hD6" id="kg3-SU-ceF"/>
                                    <outlet property="delegate" destination="Z9R-hh-hD6" id="YII-mU-72l"/>
                                </connections>
                            </tableView>
                        </subviews>
                        <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="CtP-dy-V5D" firstAttribute="width" secondItem="2HC-Sy-UMh" secondAttribute="width" multiplier="0.95" id="8a8-Z0-hnS"/>
                            <constraint firstItem="bJR-Bd-wmj" firstAttribute="top" secondItem="piN-hj-YIZ" secondAttribute="bottom" id="98U-O1-dIs"/>
                            <constraint firstItem="piN-hj-YIZ" firstAttribute="leading" secondItem="2HC-Sy-UMh" secondAttribute="leading" id="An1-of-bJN"/>
                            <constraint firstAttribute="trailing" secondItem="Hje-5f-8sm" secondAttribute="trailing" id="FlZ-wI-CTg"/>
                            <constraint firstItem="CtP-dy-V5D" firstAttribute="centerX" secondItem="2HC-Sy-UMh" secondAttribute="centerX" id="J0P-g0-0ho"/>
                            <constraint firstItem="Hje-5f-8sm" firstAttribute="top" secondItem="a87-7c-TsG" secondAttribute="bottom" id="QK2-Sv-oFX"/>
                            <constraint firstItem="piN-hj-YIZ" firstAttribute="top" secondItem="CtP-dy-V5D" secondAttribute="bottom" constant="10" id="Qaw-HC-E0b"/>
                            <constraint firstItem="Hje-5f-8sm" firstAttribute="height" secondItem="2HC-Sy-UMh" secondAttribute="height" multiplier="0.08" id="VSm-rA-XhC"/>
                            <constraint firstItem="Hje-5f-8sm" firstAttribute="leading" secondItem="2HC-Sy-UMh" secondAttribute="leading" id="ax2-1T-FOg"/>
                            <constraint firstAttribute="trailing" secondItem="piN-hj-YIZ" secondAttribute="trailing" id="kbg-xc-PYv"/>
                            <constraint firstItem="CtP-dy-V5D" firstAttribute="top" secondItem="Hje-5f-8sm" secondAttribute="bottom" constant="10" id="nOZ-YC-4f9"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="FMM-Tr-ih0" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <exit id="zsT-yG-kYM" userLabel="Exit" sceneMemberID="exit"/>
            </objects>
            <point key="canvasLocation" x="1726" y="2293"/>
        </scene>
        <!--Tab Bar Controller-->
        <scene sceneID="EYx-gA-03h">
            <objects>
                <tabBarController automaticallyAdjustsScrollViewInsets="NO" id="e4A-9j-dGT" sceneMemberID="viewController">
                    <toolbarItems/>
                    <tabBar key="tabBar" contentMode="scaleToFill" id="Gqn-Xg-wGg">
                        <rect key="frame" x="0.0" y="0.0" width="1000" height="1000"/>
                        <autoresizingMask key="autoresizingMask"/>
                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="calibratedWhite"/>
                    </tabBar>
                    <connections>
                        <segue destination="gpg-0c-vNo" kind="relationship" relationship="viewControllers" id="Bi2-Oy-rin"/>
                        <segue destination="4iD-uF-Qnd" kind="relationship" relationship="viewControllers" id="XNI-MY-Qj2"/>
                        <segue destination="bcU-6l-Lbf" kind="relationship" relationship="viewControllers" id="fMW-9P-ArZ"/>
                    </connections>
                </tabBarController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dVX-Vi-y8o" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1049" y="849"/>
        </scene>
        <!--Settings Table View Controller-->
        <scene sceneID="Ulz-Zh-ZvB">
            <objects>
                <tableViewController id="HU6-4M-niP" customClass="SettingsTableViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <tableView key="view" clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" scrollEnabled="NO" dataMode="static" style="plain" separatorStyle="default" sectionIndexMinimumDisplayRowCount="4" rowHeight="50" sectionHeaderHeight="28" sectionFooterHeight="28" id="cVw-rY-smy">
                        <rect key="frame" x="0.0" y="0.0" width="337.5" height="200"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" red="0.12939515709877014" green="0.12942373752593994" blue="0.12938910722732544" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <inset key="separatorInset" minX="0.0" minY="0.0" maxX="0.0" maxY="0.0"/>
                        <sections>
                            <tableViewSection id="8hM-Dg-Why">
                                <cells>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="41o-ru-ebq">
                                        <rect key="frame" x="0.0" y="0.0" width="337.5" height="50"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="41o-ru-ebq" id="dAR-hJ-V0X">
                                            <rect key="frame" x="0.0" y="0.0" width="337.5" height="49.5"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="User Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="eNJ-4M-qit">
                                                    <rect key="frame" x="8" y="14.5" width="86" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="P1d-Z7-Yox">
                                                    <rect key="frame" x="314.5" y="14" width="15" height="22"/>
                                                    <constraints>
                                                        <constraint firstAttribute="width" constant="15" id="EJi-md-1yO"/>
                                                    </constraints>
                                                    <state key="normal" image="Next Button.png"/>
                                                </button>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" verticalHuggingPriority="251" text="Camille" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="cxD-C3-o7u">
                                                    <rect key="frame" x="114" y="13" width="192.5" height="23"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="19"/>
                                                    <color key="textColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="cxD-C3-o7u" firstAttribute="trailing" secondItem="P1d-Z7-Yox" secondAttribute="leading" constant="-8" id="FLz-mv-vL3"/>
                                                <constraint firstItem="cxD-C3-o7u" firstAttribute="centerY" secondItem="dAR-hJ-V0X" secondAttribute="centerY" id="FZ4-Kt-ZdR"/>
                                                <constraint firstItem="P1d-Z7-Yox" firstAttribute="centerY" secondItem="dAR-hJ-V0X" secondAttribute="centerY" id="Pou-i0-4o2"/>
                                                <constraint firstItem="cxD-C3-o7u" firstAttribute="leading" secondItem="eNJ-4M-qit" secondAttribute="trailing" constant="20" id="R5Y-JR-GyS"/>
                                                <constraint firstAttribute="leadingMargin" secondItem="eNJ-4M-qit" secondAttribute="leading" id="d4I-TM-B4S"/>
                                                <constraint firstAttribute="trailingMargin" secondItem="P1d-Z7-Yox" secondAttribute="trailing" id="eax-ay-eBe"/>
                                                <constraint firstItem="eNJ-4M-qit" firstAttribute="centerY" secondItem="dAR-hJ-V0X" secondAttribute="centerY" id="mpM-uv-ked"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <color key="backgroundColor" red="0.12939515709877014" green="0.12942373752593994" blue="0.12938910722732544" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                    </tableViewCell>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="4wD-z2-RmT">
                                        <rect key="frame" x="0.0" y="50" width="337.5" height="50"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="4wD-z2-RmT" id="4BV-u1-9tr">
                                            <rect key="frame" x="0.0" y="0.0" width="337.5" height="49.5"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="1PM-Dg-deb">
                                                    <rect key="frame" x="314.5" y="14" width="15" height="22"/>
                                                    <state key="normal" image="Next Button.png"/>
                                                </button>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Following" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Mx0-Iv-gz2">
                                                    <rect key="frame" x="8" y="14.5" width="73" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="Mx0-Iv-gz2" firstAttribute="centerY" secondItem="4BV-u1-9tr" secondAttribute="centerY" id="U1a-PK-Hzd"/>
                                                <constraint firstItem="1PM-Dg-deb" firstAttribute="centerY" secondItem="4BV-u1-9tr" secondAttribute="centerY" id="dUB-1h-faF"/>
                                                <constraint firstAttribute="trailingMargin" secondItem="1PM-Dg-deb" secondAttribute="trailing" id="fJA-F7-L1V"/>
                                                <constraint firstItem="Mx0-Iv-gz2" firstAttribute="leading" secondItem="4BV-u1-9tr" secondAttribute="leadingMargin" id="npK-fV-h2b"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <color key="backgroundColor" red="0.12939515709877014" green="0.12942373752593994" blue="0.12938910722732544" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <segue destination="Z9R-hh-hD6" kind="custom" customClass="SegueFromRight" customModule="Tagify" customModuleProvider="target" id="J45-KQ-3W6"/>
                                        </connections>
                                    </tableViewCell>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="5Ei-WQ-ioj">
                                        <rect key="frame" x="0.0" y="100" width="337.5" height="50"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="5Ei-WQ-ioj" id="R7r-kO-bEF">
                                            <rect key="frame" x="0.0" y="0.0" width="337.5" height="49.5"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="elk-XG-CcO">
                                                    <rect key="frame" x="314.5" y="14" width="15" height="22"/>
                                                    <state key="normal" image="Next Button.png"/>
                                                </button>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Followers" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="28G-Co-xpo">
                                                    <rect key="frame" x="8" y="14.5" width="73" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="28G-Co-xpo" firstAttribute="centerY" secondItem="R7r-kO-bEF" secondAttribute="centerY" id="CPj-Ih-ks2"/>
                                                <constraint firstItem="28G-Co-xpo" firstAttribute="leading" secondItem="R7r-kO-bEF" secondAttribute="leadingMargin" id="YmC-fl-lZG"/>
                                                <constraint firstAttribute="trailingMargin" secondItem="elk-XG-CcO" secondAttribute="trailing" id="iYP-WC-y55"/>
                                                <constraint firstItem="elk-XG-CcO" firstAttribute="centerY" secondItem="R7r-kO-bEF" secondAttribute="centerY" id="vxp-oI-nHw"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <color key="backgroundColor" red="0.12939515709877014" green="0.12942373752593994" blue="0.12938910722732544" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <segue destination="h30-1G-VRJ" kind="custom" customClass="SegueFromRight" customModule="Tagify" customModuleProvider="target" id="pen-HQ-KdJ"/>
                                        </connections>
                                    </tableViewCell>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="rEq-EC-ycl">
                                        <rect key="frame" x="0.0" y="150" width="337.5" height="50"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="rEq-EC-ycl" id="0EM-IM-r9Z">
                                            <rect key="frame" x="0.0" y="0.0" width="337.5" height="49.5"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="zlO-Fb-uCn">
                                                    <rect key="frame" x="314.5" y="14" width="15" height="22"/>
                                                    <state key="normal" image="Next Button.png"/>
                                                </button>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Theme Color" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="s9u-Lv-1WY">
                                                    <rect key="frame" x="8" y="14.5" width="99" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="s9u-Lv-1WY" firstAttribute="centerY" secondItem="0EM-IM-r9Z" secondAttribute="centerY" id="0KE-Y1-uY0"/>
                                                <constraint firstItem="zlO-Fb-uCn" firstAttribute="centerY" secondItem="0EM-IM-r9Z" secondAttribute="centerY" id="2Gq-0j-BqV"/>
                                                <constraint firstItem="s9u-Lv-1WY" firstAttribute="leading" secondItem="0EM-IM-r9Z" secondAttribute="leadingMargin" id="BB3-fj-9Dm"/>
                                                <constraint firstAttribute="trailingMargin" secondItem="zlO-Fb-uCn" secondAttribute="trailing" id="njn-vt-Em1"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                        <color key="backgroundColor" red="0.12939515709877014" green="0.12942373752593994" blue="0.12938910722732544" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <connections>
                                            <segue destination="dvp-ph-IGO" kind="custom" customClass="SegueFromRight" customModule="Tagify" customModuleProvider="target" id="a9d-IO-2Nn"/>
                                        </connections>
                                    </tableViewCell>
                                </cells>
                            </tableViewSection>
                        </sections>
                        <connections>
                            <outlet property="dataSource" destination="HU6-4M-niP" id="fZy-Bg-037"/>
                            <outlet property="delegate" destination="HU6-4M-niP" id="30w-Op-ZTa"/>
                        </connections>
                    </tableView>
                    <connections>
                        <outlet property="usernameLabel" destination="cxD-C3-o7u" id="l4u-A0-M8h"/>
                        <segue destination="0oc-Ap-1Um" kind="custom" identifier="SegueToUsernameView" customClass="SegueFromRight" customModule="Tagify" customModuleProvider="target" id="nKi-ox-tlJ"/>
                    </connections>
                </tableViewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="jKt-2W-4Z8" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="2424" y="1499"/>
        </scene>
        <!--Following View Controller-->
        <scene sceneID="1jo-xc-vPB">
            <objects>
                <viewController id="h30-1G-VRJ" customClass="FollowingViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="RKF-dk-wbo"/>
                        <viewControllerLayoutGuide type="bottom" id="V8X-xX-a2u"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="ZQ3-cH-MHR">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="qRV-dw-hdD">
                                <rect key="frame" x="0.0" y="20" width="375" height="53.5"/>
                                <subviews>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Followers" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Jhx-WP-XSE">
                                        <rect key="frame" x="151" y="16" width="73" height="21"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="I6d-ni-U3I">
                                        <rect key="frame" x="20" y="16" width="15" height="22"/>
                                        <state key="normal" image="Previous Button.png"/>
                                        <connections>
                                            <segue destination="MET-Wd-MW8" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" unwindAction="backToSettingsWithSegue:" id="qgz-hD-ASK"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="Jhx-WP-XSE" firstAttribute="centerX" secondItem="qRV-dw-hdD" secondAttribute="centerX" id="Chy-Sy-5JT"/>
                                    <constraint firstItem="I6d-ni-U3I" firstAttribute="centerY" secondItem="qRV-dw-hdD" secondAttribute="centerY" id="Sz2-nM-G45"/>
                                    <constraint firstItem="I6d-ni-U3I" firstAttribute="leading" secondItem="qRV-dw-hdD" secondAttribute="leading" constant="20" id="c1S-Qn-UZ5"/>
                                    <constraint firstItem="Jhx-WP-XSE" firstAttribute="centerY" secondItem="qRV-dw-hdD" secondAttribute="centerY" id="eWF-J5-rW9"/>
                                </constraints>
                            </view>
                            <textField opaque="NO" clipsSubviews="YES" contentMode="scaleToFill" contentHorizontalAlignment="left" contentVerticalAlignment="center" borderStyle="roundedRect" placeholder="Search" textAlignment="natural" minimumFontSize="17" translatesAutoresizingMaskIntoConstraints="NO" id="QMb-VJ-O76">
                                <rect key="frame" x="9.5" y="83.5" width="356.5" height="30"/>
                                <nil key="textColor"/>
                                <fontDescription key="fontDescription" type="system" pointSize="14"/>
                                <textInputTraits key="textInputTraits"/>
                            </textField>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="afj-MC-RjK">
                                <rect key="frame" x="0.0" y="123.5" width="375" height="543.5"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                <inset key="separatorInset" minX="15" minY="0.0" maxX="15" maxY="0.0"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" reuseIdentifier="FollowingCell" id="4li-tn-h6P">
                                        <rect key="frame" x="0.0" y="28" width="375" height="44"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="4li-tn-h6P" id="cJD-Pj-lPE">
                                            <rect key="frame" x="0.0" y="0.0" width="375" height="43"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                            <subviews>
                                                <imageView userInteractionEnabled="NO" contentMode="scaleToFill" horizontalHuggingPriority="251" verticalHuggingPriority="251" image="music.jpg" translatesAutoresizingMaskIntoConstraints="NO" id="ddC-jf-v8F">
                                                    <rect key="frame" x="20" y="7" width="30" height="30"/>
                                                    <constraints>
                                                        <constraint firstAttribute="height" constant="30" id="Bas-dr-YFK"/>
                                                        <constraint firstAttribute="width" constant="30" id="ou1-yO-opF"/>
                                                    </constraints>
                                                </imageView>
                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Name" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="bHI-f3-rqS">
                                                    <rect key="frame" x="90" y="11" width="45" height="21"/>
                                                    <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                    <nil key="textColor"/>
                                                    <nil key="highlightedColor"/>
                                                </label>
                                            </subviews>
                                            <constraints>
                                                <constraint firstItem="bHI-f3-rqS" firstAttribute="leading" secondItem="ddC-jf-v8F" secondAttribute="trailing" constant="40" id="1oH-Ua-5re"/>
                                                <constraint firstItem="bHI-f3-rqS" firstAttribute="centerY" secondItem="cJD-Pj-lPE" secondAttribute="centerYWithinMargins" id="4mC-9z-ZYw"/>
                                                <constraint firstItem="ddC-jf-v8F" firstAttribute="centerY" secondItem="cJD-Pj-lPE" secondAttribute="centerY" id="Jj1-ac-4Eh"/>
                                                <constraint firstItem="ddC-jf-v8F" firstAttribute="leading" secondItem="cJD-Pj-lPE" secondAttribute="leading" constant="20" id="izw-H7-fQK"/>
                                            </constraints>
                                        </tableViewCellContentView>
                                    </tableViewCell>
                                </prototypes>
                                <connections>
                                    <outlet property="dataSource" destination="h30-1G-VRJ" id="49P-aB-fbL"/>
                                    <outlet property="delegate" destination="h30-1G-VRJ" id="hDr-Ux-Xzc"/>
                                </connections>
                            </tableView>
                        </subviews>
                        <color key="backgroundColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="QMb-VJ-O76" firstAttribute="top" secondItem="qRV-dw-hdD" secondAttribute="bottom" constant="10" id="5eg-oA-Nyx"/>
                            <constraint firstAttribute="trailing" secondItem="qRV-dw-hdD" secondAttribute="trailing" id="7Qt-sp-gxt"/>
                            <constraint firstItem="afj-MC-RjK" firstAttribute="leading" secondItem="ZQ3-cH-MHR" secondAttribute="leading" id="B8Y-cX-VaZ"/>
                            <constraint firstItem="qRV-dw-hdD" firstAttribute="leading" secondItem="ZQ3-cH-MHR" secondAttribute="leading" id="BHF-vN-b1o"/>
                            <constraint firstItem="QMb-VJ-O76" firstAttribute="centerX" secondItem="ZQ3-cH-MHR" secondAttribute="centerX" id="BdF-B2-Ik1"/>
                            <constraint firstItem="afj-MC-RjK" firstAttribute="top" secondItem="QMb-VJ-O76" secondAttribute="bottom" constant="10" id="DeJ-b5-iQ9"/>
                            <constraint firstItem="QMb-VJ-O76" firstAttribute="width" secondItem="ZQ3-cH-MHR" secondAttribute="width" multiplier="0.95" id="IEQ-nd-aC0"/>
                            <constraint firstItem="qRV-dw-hdD" firstAttribute="top" secondItem="RKF-dk-wbo" secondAttribute="bottom" id="MzM-zZ-gFw"/>
                            <constraint firstItem="qRV-dw-hdD" firstAttribute="height" secondItem="ZQ3-cH-MHR" secondAttribute="height" multiplier="0.08" id="av2-G9-QaU"/>
                            <constraint firstItem="V8X-xX-a2u" firstAttribute="top" secondItem="afj-MC-RjK" secondAttribute="bottom" id="cee-lh-xpW"/>
                            <constraint firstAttribute="trailing" secondItem="afj-MC-RjK" secondAttribute="trailing" id="xBZ-E2-f2w"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="ZgS-xI-k1m" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <exit id="MET-Wd-MW8" userLabel="Exit" sceneMemberID="exit"/>
            </objects>
            <point key="canvasLocation" x="2454" y="2397"/>
        </scene>
        <!--Username View Controller-->
        <scene sceneID="9wp-tq-57R">
            <objects>
                <viewController id="dvp-ph-IGO" customClass="UsernameViewController" customModule="Tagify" customModuleProvider="target" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="N0u-bs-ulp"/>
                        <viewControllerLayoutGuide type="bottom" id="y2r-Rm-Uej"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="byG-S0-VVz">
                        <rect key="frame" x="0.0" y="0.0" width="375" height="667"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <view contentMode="scaleToFill" translatesAutoresizingMaskIntoConstraints="NO" id="Iax-TF-70Q">
                                <rect key="frame" x="0.0" y="0.0" width="375" height="53.5"/>
                                <subviews>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="oTm-fc-qeM">
                                        <rect key="frame" x="20" y="0.5" width="30" height="53.5"/>
                                        <constraints>
                                            <constraint firstAttribute="width" constant="30" id="ovb-rz-sai"/>
                                        </constraints>
                                        <fontDescription key="fontDescription" type="system" pointSize="18"/>
                                        <state key="normal" image="Previous Button.png"/>
                                        <connections>
                                            <segue destination="5Ro-BT-1IO" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" unwindAction="backToSettingsWithSegue:" id="g4d-06-zkB"/>
                                        </connections>
                                    </button>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Theme Color" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="JGL-uf-7DY">
                                        <rect key="frame" x="138" y="16" width="99" height="21"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <color key="textColor" red="0.76862745099999996" green="0.76862745099999996" blue="0.76862745099999996" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <button opaque="NO" contentMode="scaleToFill" contentHorizontalAlignment="center" contentVerticalAlignment="center" buttonType="roundedRect" lineBreakMode="middleTruncation" translatesAutoresizingMaskIntoConstraints="NO" id="d7i-cl-RKa">
                                        <rect key="frame" x="321" y="11.5" width="34" height="30"/>
                                        <state key="normal" title="Save">
                                            <color key="titleColor" red="1" green="0.73333333329999995" blue="0.57647058819999997" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                        </state>
                                        <connections>
                                            <segue destination="5Ro-BT-1IO" kind="unwind" customClass="UnwindSegueToRight" customModule="Tagify" unwindAction="saveUserNameBackToSettingsWithSegue:" id="1MZ-1d-Fxt"/>
                                        </connections>
                                    </button>
                                </subviews>
                                <color key="backgroundColor" red="0.12941176469999999" green="0.12941176469999999" blue="0.12941176469999999" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                                <constraints>
                                    <constraint firstItem="oTm-fc-qeM" firstAttribute="height" secondItem="Iax-TF-70Q" secondAttribute="height" id="6oQ-cD-KAr"/>
                                    <constraint firstAttribute="trailing" secondItem="d7i-cl-RKa" secondAttribute="trailing" constant="20" id="Q3h-MW-GEO"/>
                                    <constraint firstItem="d7i-cl-RKa" firstAttribute="centerY" secondItem="Iax-TF-70Q" secondAttribute="centerY" id="SEK-kd-GZl"/>
                                    <constraint firstItem="oTm-fc-qeM" firstAttribute="leading" secondItem="Iax-TF-70Q" secondAttribute="leading" constant="20" id="g3u-hp-nxQ"/>
                                    <constraint firstItem="JGL-uf-7DY" firstAttribute="centerY" secondItem="Iax-TF-70Q" secondAttribute="centerY" id="okV-B5-jXZ"/>
                                    <constraint firstItem="JGL-uf-7DY" firstAttribute="centerX" secondItem="Iax-TF-70Q" secondAttribute="centerX" id="yRK-Ja-7AO"/>
                                    <constraint firstItem="oTm-fc-qeM" firstAttribute="centerY" secondItem="Iax-TF-70Q" secondAttribute="centerY" id="zCa-Gj-gJl"/>
                                </constraints>
                            </view>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="yjm-d9-KcJ">
                                <rect key="frame" x="37.5" y="133.5" width="300" height="400"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                                <prototypes>
                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="cF7-Ax-vFm">
                                        <rect key="frame" x="0.0" y="28" width="301" height="44"/>
                                        <autoresizingMask key="autoresizingMask"/>
                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="cF7-Ax-vFm" id="wIY-y0-xjv">
                                            <rect key="frame" x="0.0" y="0.0" width="300" height="43.5"/>
                                            <autoresizingMask key="autoresizingMask"/>
                                        </tableViewCellContentView>
                                    </tableViewCell>
                                </prototypes>
                            </tableView>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                        <constraints>
                            <constraint firstAttribute="trailing" secondItem="Iax-TF-70Q" secondAttribute="trailing" id="1hI-BW-oN5"/>
                            <constraint firstItem="Iax-TF-70Q" firstAttribute="height" secondItem="byG-S0-VVz" secondAttribute="height" multiplier="0.08" id="1pX-Ue-apW"/>
                            <constraint firstItem="yjm-d9-KcJ" firstAttribute="width" secondItem="byG-S0-VVz" secondAttribute="width" multiplier="0.8" id="3CC-kd-BZj"/>
                            <constraint firstItem="yjm-d9-KcJ" firstAttribute="centerX" secondItem="byG-S0-VVz" secondAttribute="centerX" id="6vU-jY-Z5o"/>
                            <constraint firstItem="yjm-d9-KcJ" firstAttribute="height" secondItem="byG-S0-VVz" secondAttribute="height" multiplier="0.6" id="Bgs-5k-u2g"/>
                            <constraint firstItem="Iax-TF-70Q" firstAttribute="leading" secondItem="byG-S0-VVz" secondAttribute="leading" id="pVw-up-Is9"/>
                            <constraint firstItem="yjm-d9-KcJ" firstAttribute="centerY" secondItem="byG-S0-VVz" secondAttribute="centerY" id="uYO-do-S7F"/>
                            <constraint firstItem="Iax-TF-70Q" firstAttribute="top" secondItem="N0u-bs-ulp" secondAttribute="bottom" id="z7j-Z0-b76"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="uFi-my-xLd" userLabel="First Responder" sceneMemberID="firstResponder"/>
                <exit id="5Ro-BT-1IO" userLabel="Exit" sceneMemberID="exit"/>
            </objects>
            <point key="canvasLocation" x="3138" y="2307"/>
        </scene>
    </scenes>
    <resources>
        <image name="Cross Buttomwith shadow.png" width="88" height="88"/>
        <image name="Next Button.png" width="15" height="16"/>
        <image name="Previous Button.png" width="15" height="16"/>
        <image name="backward 2.27.52 AM 2.27.53 AM.png" width="38" height="36"/>
        <image name="forward.png" width="38" height="36"/>
        <image name="music.jpg" width="510" height="330"/>
        <image name="playButton.png" width="52" height="52"/>
        <image name="setting1.png" width="200" height="200"/>
    </resources>
</document>
