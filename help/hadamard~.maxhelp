{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 402.0, 503.0, 701.0, 506.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 701.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-29",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 372.0, 113.0, 8.0, 345.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 394.0, 113.0, 210.0, 20.0 ],
									"presentation_linecount" : 2,
									"text" : "List of values in specific buffer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 113.0, 150.0, 20.0 ],
									"text" : "List of values as message"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 206.0, 220.0, 20.0 ],
									"presentation_linecount" : 2,
									"text" : "list output of current values at last outlet"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 182.0, 206.0, 20.0 ],
									"presentation_linecount" : 2,
									"text" : "reset to default value (1 for all inputs)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.0, 158.0, 150.0, 20.0 ],
									"text" : "list of input coefficients"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 572.0, 282.0, 104.0, 22.0 ],
									"text" : "route input_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 527.0, 321.0, 64.0, 22.0 ],
									"text" : "0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 392.0, 145.0, 224.0, 60.0 ],
									"text" : "It is possible to store the coefficients in a specific buffer as long as the number of channels in the matrix. The buffer could be longer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 962.0, 172.0, 434.0, 309.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 322.0, 209.0, 32.0, 22.0 ],
													"text" : "3 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 322.0, 174.0, 39.0, 22.0 ],
													"text" : "/ 127."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 322.0, 17.0, 20.0, 140.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.0, 209.0, 32.0, 22.0 ],
													"text" : "2 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 129.0, 209.0, 32.0, 22.0 ],
													"text" : "1 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 129.0, 174.0, 39.0, 22.0 ],
													"text" : "/ 127."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 129.0, 17.0, 20.0, 140.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 25.0, 209.0, 32.0, 22.0 ],
													"text" : "0 $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 25.0, 174.0, 39.0, 22.0 ],
													"text" : "/ 127."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 25.0, 17.0, 20.0, 140.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 25.0, 255.0, 77.0, 22.0 ],
													"text" : "peek~ coeffs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 224.0, 174.0, 39.0, 22.0 ],
													"text" : "/ 127."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "slider",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 224.0, 17.0, 20.0, 140.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 582.0, 361.0, 94.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p update_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 392.0, 251.0, 199.0, 22.0 ],
									"text" : "hadamard~ 2 @coeffs_buffer coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 392.0, 361.0, 152.0, 22.0 ],
									"text" : "buffer~ coeffs 1 @samps 4"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 65.0, 533.0, 21.0 ],
									"text" : "Scaling input"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-8",
									"ignoreclick" : 1,
									"jsarguments" : [ "hadamard~" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 240.967987060546875, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 85.0, 376.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 117.0, 350.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 54.0, 406.0, 56.0, 22.0 ],
									"sig" : 1.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 22.0, 436.0, 56.0, 22.0 ],
									"sig" : 3.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "number~",
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 149.0, 251.0, 56.0, 22.0 ],
									"sig" : 3.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 148.0, 318.0, 104.0, 22.0 ],
									"text" : "route input_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 61.0, 181.0, 74.0, 22.0 ],
									"text" : "reset_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 195.0, 350.0, 77.0, 22.0 ],
									"text" : "1. 2. 1. 2."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 205.0, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 22.0, 157.0, 113.0, 22.0 ],
									"text" : "input_coeffs 1 2 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 22.0, 287.0, 145.5, 22.0 ],
									"text" : "hadamard~ 2"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-1", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"order" : 2,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 3,
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 39.0, 77.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"scaling input\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 701.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 68.0, 144.0, 25.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ?"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 701.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 65.0, 533.0, 21.0 ],
									"text" : "Multichannel implementation"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-5",
									"ignoreclick" : 1,
									"jsarguments" : [ "hadamard~" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 240.967987060546875, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 143.0, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 119.0, 74.0, 22.0 ],
									"text" : "reset_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 490.0, 236.0, 104.0, 22.0 ],
									"text" : "route input_coeffs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 264.0, 104.0, 22.0 ],
									"text" : "1. 1. 1. 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.0, 95.0, 113.0, 22.0 ],
									"text" : "input_coeffs 1 2 5 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 185.0, 119.0, 96.0, 22.0 ],
									"text" : "mcs.sig~ 3 1 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 185.0, 313.0, 145.5, 22.0 ],
									"text" : "mc.unpack~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 185.0, 281.0, 267.0, 22.0 ],
									"text" : "mc.hadamard~ 2 @normalized 1 @clip_output 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 312.0, 350.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 269.0, 366.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 227.0, 393.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 185.0, 420.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "multichannelsignal", "" ],
									"patching_rect" : [ 185.0, 206.0, 324.0, 22.0 ],
									"text" : "mc.hadamard~ 2"
								}

							}
, 							{
								"box" : 								{
									"attr" : "normalized",
									"id" : "obj-2",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 33.0, 206.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "normalized",
									"id" : "obj-15",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 33.0, 281.0, 150.0, 22.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-3", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-3", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 53.0, 110.0, 35.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mc"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 402.0, 529.0, 701.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.0, 65.0, 533.0, 21.0 ],
									"text" : "Implementation of the Fast Walsh-Hadamard Transform"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "helpname.js",
									"id" : "obj-33",
									"ignoreclick" : 1,
									"jsarguments" : [ "hadamard~" ],
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 10.0, 10.0, 240.967987060546875, 57.599853515625 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 26489, "png", "IBkSG0fBZn....PCIgDQRA..EX...DfUHX....vNhATR....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGeTUc++G+MgrhLfxxPTBpkkfBZ.BhBks.UPBPTSqJBUPpBxRwpzGXEsXK3REn+ZsJELpnHREPnHpTEDDQ.YQQh.eYMfDVSHATPBjkISR98GoLkwL6YxclIyqmOdjGl4bOy49Iijal4y4d9bpSEUTQEB.........gUhHPG..........v3QhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCQhAA........BCEYfN....P3qxKubs0stUUXgEVicNZbiar5Tm5TM13C...fPWe0W8UpfBJnFa7aVyZlt4a9lqwF+pq5TQEUTQfNH...P3o8t28p1291WidNRKszzG8QeTM54.....gd91u8aUxImbM54XjibjZdyad0nmipCVJw........HrSQEUTfNDB3Hwf.........ggHwf.........ggHwf.........ggXWIF...AcZW6ZmlxTlheYrhO938KiC....pco0st0ZgKbg9kwxpUqZDiXD9kwxHQhAA..PPmG7AePMzgNz.cX....fZwLa1re68bVZokFRlXPVJw.........ggHwf.........ggHwf..nZKu7xSe228c5hW7hA5PA......dHRLH..pVV0pVkhO93Uqacq0Ue0WsN6YOafNj......fGfDCB..e1q8ZulRM0Ts83BJn.cjibj.W.A......OFIFD..dsCcnCoALfAnwN1wVkiY0p0.PDA......uUjA5....gNNzgNjlyblidoW5kBzgB......plHwf..vkN9wOtV8pWsV1xVlV4JWYfNb.B317l2rxHiLzYNyYTjQFohLxHUTQEkhKt3TLwDihIlXr88QGczJpnhRQEUTRpx6n1RKsTYwhEURIknRJoDUbwEa6qRJoDY0pUY0pUU+5We8xu7Kqq9puZWFOaXCaPuwa7F56+9u2gwSrwFqhM1XsEOQGczJxHizqiGSlLoYO6YqlzjlTi+ZL.PMobxIG8BuvKnryNaEQDQnHiLREczQqXiMVEczQa20yu7qkGQDQX6ZhVrXw10I+o+2Kc7HiLRMoIMI0qd0KWFOG6XGSu3K9h5nG8nUIdtz0uuzWwFar196JdZ7XwhEY0pUEczQqIO4Iqt10tZPuRCfPAjXP..nsu8sqyctyoKbgKnie7iqCbfCn8t28pcu6cq7yO+.c3ADTYxSdxZiabiFx4picri5oe5m1k8YRSZRZaaaaFR7z0t1UMwINQC4bA.TSYtyctZNyYNFx45hW7hZsqcstrOu5q9pJiLxvPhmxKub8QezGYHmK.DZfDCB.Dl6K+xuT8rm8LPGF.gLxKu7Lry0UcUWka6St4lqADIUxShG.ffcm4LmwvNWMtwM1s84zm9zFPjTIOId.P3ERLH.PXte7G+QOpeIjPBZLiYL5FuwaT2y8bO0vQEPvqoO8oq2+8eecwKdQYwhEc9yedkWd4orxJKeZ7LYxjZSaZiZbiarskOVzQGsZcqasF9vGtae9+8+9eWevG7ApnhJRVrXQm6bmSm9zm1miGylMqDRHgpDO23Mdi59tu6ymFS.ffIiZTiREVXg5bm6bxhEK5hW7h5Lm4LJ6ryVETPA9zX1t10NY1rYEWbwY6ZmW8Ue0ZBSXBt84N9wOdUVYkoBJn.+R7XxjI0hVzBEe7wqXhIF6hmG+webe4GO.TKFIFD..NT6ZW6TW6ZW0sbK2h5bm6rtka4VTDQDg14N2YfNz.BnRO8zU5omdUZuhJpPYmc1ZpScpZAKXAtcbdpm5ozXFyXz0ccWW0Jdt268d08du2aUZu7xKWYmc15odpmRKcoK0siyK7BufF4HGotlq4ZpVwC.PvtjRJIM24NWGdr7yOesvEtPOprIjVZoooMsoojRJIU25VWeNdRN4j07l27b3wN0oNkl+7mul7jmraGmgMrgom9oeZci23MpHhHBeNd.P3ERLH.PXtdzidnctycpHiLREarwplzjlnFzfFDnCKfPN0oN0QsrksT8su80sIFbhSbh5u7W9K0nwSDQDgZUqZkRIkTbahAm5Tmpaqkg..gCLa1rF7fGraSLXW6ZW0RVxRTrwFaMZ7De7wqTSMU2lXv9129p4O+4aaykB.vSwUM..By0vF1PkTRIEnCCfZM1xV1ha6yTlxTLfHoRdR7LoIMICHR..BM3IanSSYJSoFOofWhmDOOyy7LjTP.3S39KF...vO5S9jOwkGOkTRQMpQMxfhFoUu5U6xiOnAMHcEWwUXPQC.Pvuu3K9B21m9zm9TyGH+Wqe8q2s84m+y+4FPj.fZiHwf....9IG6XGSm3Dmvk8YfCbfFTzHcvCdPke946x9jZpoZPQC.PnA2MAOolZppd0qdFTzH8oe5m5ximd5oqniNZCJZ.PsMjXP....+jMsoM419zyd1SCHRpjmDO8nG8v.hD.fPCdxD7Xj2sfG5PGxsSvyu3W7KLnnA.0FQhAA...7S7jkeVxImbMef7e4tkelISlzMcS2jAEM..A+B1lfmMu4M619vD7.fpCRLH...fehmr7yLxk6k6hma+1ucU25VWCJZ..B94ISvSm6bmq4Cj+KlfG.TSiDCB...3G3IK+r9129ZPQiT1YmMK+L..ujmLAOQEUTFTz39MPJlfG.TcQhAA...7CB1V9YTeAA.7NAaSvyQNxQba7vD7.fpKRLH...fePvV8EbCaXCt73r7y..rGSvC.BGQhAA...7C9rO6yb4wGzfFjgt7yV4JWoKONK+L..64tITQhI3A.09PhAA...plN9wOtN7gOrK6Se5SeLnnox3gkeF.f2wc0yOidBdb2DNwD7..+ARLH...P0DK+L.fPaAaSvyINwIba7vD7..+ARLH...P0z5W+5cae5Tm5jADIUhkeF.f2gI3A.gqHwf....USAaK+rO8S+TWdbV9Y..1iI3A.gqHwf....UCdxxOqu8suFTzHkSN4vxOC.vKErMAOTeAAfQgDCB...TMDrs7y17l2ra6CK+L.f+mfsI3I2byUYkUVtrOLAO.vegDCB...TMvxOC.HzFSvC.BmQhAA...pFb2xOKszRSQFYjFTzP8ED.vawD7.fvYjXP....ezINwIb6xOqO8oOFTzHke94yxOC.vKErMAOTeAAfQhDCB...3i9xu7KcaeLxke1V1xVbaeX4mA.7+DrMAOm9zmV6cu60k8gI3A.9SjXP....ejmr7y5XG6nADIUhkeF.f2gI3A.g6Hwf....9HV9Y..g1XBd.P3NRLH...fOvSV9Y8su80fhFoe3G9AsqcsKW1GV9Y..1KXaBdVyZViKONSvC.72LtqvA...TKhmr7yl3DmndwW7EMfnQpnhJxs8gkeF.v+imLAOqXEqPMqYMyfhnJ2DobElfG.3uQhAA...7AdxxOSx8eHOiBK+L..64ISviTvy0wkXBd.f+GKkX....ef6V9YAaX4mA.XO2UO+B1vD7.fZBbGCB...3kN4IOoaW9YokVZp8su8FV7rfEr.W1GV9Y..16S+zO0kGOojRRCbfCzfhFooO8o6xiyD7.fZBjXP....ujmr7yd9m+4URIkjADMRKaYKysIFjkeF.v+imLAOiYLiQie7i2PhmScpS41DCxD7.fZBjXP....uj6pufF8x8JXKdP3qBKrP8JuxqnBJn.0st0MM3AO3.cHA3PdxD7XjSnxl1zlbaeXBdfQnhJpPKXAKP6ae6SIjPBZbiabJhHnJzUaFIFD...vK4tkeV+6e+Mz2Ds6hGV9YvHjYlYpgNzgprxJKIUYBoO+4Oe.Np.bLOYBULpxAgjzW7EegKONSvCLB4kWdZzidzZEqXE1ZqO8oOpcsqcAvnB0zHsu....dAOY4m0m9zGCJZjxM2bskHFmgkeFpIUXgEpYLiYnN24Na2+VrfBJH.FU.tlmLAOF4Dp3tMzJlfGTSprxJSevG7ApMsoM1kTPoJuFOpci6XP....uPv1xOKXKdP3gRKsTst0sNsnEsH81u8aGnCG.uRv1D7jSN4vD7f.hLyLSsjkrDMu4MOke946v9TQEUXvQELZjXP....uPvV87aCaXCt73r7yP0woN0ozxV1xTIkThN+4OuN3AOn1+92uxLyLCzgFfOKXaBUn9BhZZYjQFp3hKVW7hWTYmc1Z+6e+ZW6ZWbmcCIQhAA...7JAa0yOV9YnlzQNxQzDlvDBzgAfeUv1DpDrEOn1mwMtwEnCADDiZLH...fGJmbxwsK+r9129ZPQCK+LDXkTRIo+7e9OqCdvCpDSLw.c3.3wV0pVkKOtQOgJexm7It73LAOnlRKaYK0XG6X0l1zlXRfBiwcLH...fGxSVtWcu6c2.hjJwxOC0zZQKZgl4LmohLxHUCZPCTSZRSTyadyU6ZW6T8pW8BzgGfWySlfGit9B5t3gI3AUWyblyT0st0UwEWbpoMsoJ93iWsqcsSMpQMxVeVzhVT.LBQfDIFD...vC8EewW3xiaxjIcy27MaLAi7r3gkeFpNZdyatdhm3IBzgAfeSv1DpDrEOn1ItNNbEVJw....dH2s7y5ae6qhLRiadWC1VNb..A6XBd..rGIFD...vCvxOC.HzGSvC.f8Hwf....dffsk6UvV7..DrySlPkTRIEiIXDSvC.BNPhAA...7.ta4dII0gNzgZ9.4+ZCaXCt73r7y..rmmLgJ8rm8z.hjJwD7.ffAjXP....Ovm8YelKOdZoklgt7yV8pWsKONK+L..64tITQhI3A.geXWIF...vMxImbTVYkkK6iQWeAcW7XTK+rye9yqe7G+Q03F2XUu5UOedbNyYNiJpnhjISlTCZPCTDQT8l+57xKOUVYkoF23FqXhIlp0XAfZGb2DpDtNAObcbfvabGCB...3FAaK2qMu4M619TSFOVsZUyd1yVspUsRMrgMTW60ds5JthqPssssUO6y9rpvBKzkO+JpnBspUsJMpQMJ0idzC0fFz.0zl1TcsW60pq5ptJU25VWMfAL.85u9q61w5RwyhW7h03F23rMdwGe7p4Mu4J1XiUMnAMPCe3CWKaYKSVsZ0e8x..Bg3ISnhQVeAyM2bCnSvCWGG.1TA..fWXKaYKUHIm90F23FCzgHBgrm8rGG9uilwLlQfNzryDlvDb4+tWRUTZokFzDOlLYpBqVsVibtKu7xq3du260km+jRJoJ1+92eUdtkUVYUrnEsnJRJojb6qmW9OKaXCavgwRokVZEKbgKrhV1xV5wiWRIkTE6bm6rF40lvYIlXhN70affEKYIKwsWe3q+5u1vhmktzk513YG6XG0HmatNNbDm8dKLxeuHTmEKVb3qgibjiLPGZtDKkX..3U99u+6c4wOyYNiAEI.FG2sbuFzfFTXyxOalyblZoKcoRRxrYy5ge3GVMpQMROwS7D15yt10tzMbC2f9lu4aTm6bmkjzYO6Y0C9fOnVwJVgs9YxjIkRJonNzgNnV0pVobyMWsxUtRswMtQa8ofBJP8pW8RqcsqU8su80V64lat5ttq6RaaaaqJiWm5TmTqZUqzQO5Q0JVwJrqO6ZW6R8nG8Pae6aWsoMsw++BD.BJ4I0WvN1wNZ.QRkBj0WPtNN.rSfNyj..Hzx3F23b4r3N9wO9.cHhPHgB2wfm7jmzs28B++9+8+yvhmbyMW2FO+y+4+rF4b+Ue0WY2c.xAO3Ascrm+4e9pDGcsqcshxKu7J16d2aUtaPdlm4Yp3G9genJmixKu7JF4HGYUFqV1xVVQgEVXEUTQEUrqcsqJRHgDr63yblyz1wubkTRIULnAMnpLdImbx0HuFEth6XPDryY+azK80fFzfBphmzSO8ZjyKWGGNC2wfUegp2wfTiAA.fGo3hKVyd1yVu5q9ptreyYNyQYjQFxhEKFTjATyh5K3+yTm5Ts88uy67Np0st01d7ktiRtbacqaUqcsqUojRJ5vG9vRRpKcoK5jm7j5Ye1mUW0UcUU44Tm5TGM6YO6pz9gO7g0+4+7ez29seqRJojzINwIjjT5omtxM2b0S7DOghKt3pxyK5niVu7K+xUo8LyLS6tiV.PsWAa0Wv7xKu.V8EjqiCfeJVJw..PKaYKS4jSNRRprxJSVsZUkVZo57m+75zm9zJqrxxqdiWiabiSiabiS8su8UspUsRMoIMQlLYRQEUTJxHiz1RbLkTRQ27Mey0H+LA3u3IK+rjSNYCHRpj69cwZpke1t10tzJW4JkjThIlnty67Ns63Wy0bMN740u90OaeepolpVxRVhpe8quKOW0qd0S8qe8SqYMqwt1e228c0V1xVr83G3Ad.Mu4MO2tLtaUqZkZYKaosOT6krgMrA0yd1SW9bAPnOOYBdLxqEDnlfGtNN.bDRLH..zblybzm+4eteeb+7O+yc431yd1SOJoK.ARtqd9kZpopnhJJCJZBb0WvEtvEZ66erG6wTDQX+BO43G+3t74mRJonO3C9.EczQ6QmOGcWn7ge3GZ66G4HGol6bmqG+ypi9Pr+zOfI.pcxSduFcpScx.hjJEnpufbcb.3HrThA.P.S4kWdfND.boie7i61k6Ue5SeLnnQJ+7yW6cu60k8olX4mUd4kq4Mu4Y6wokVZUoO6bm6zoOeylMq268dOO9CSJ45MxnjSNYkQFY3UI.M6rytJsUbwE6wOe.D55S9jOwkGO0TS0qt9T0UfXBd353.vYBotiAyImbzK7BufxN6rUDQDghLxHUzQGshM1XUzQGshKt3TLwDisuhN5nUTQEkhHhHjUqVkUqVkEKVTwEWrJojRpx+8RGOxHiTSZRSR8pW8xkwywN1wzK9hunN5QOZUhmXiMV6hkXiMVEUTQ4UwiEKVjUqVUzQGsl7jmr5ZW6pA8JM.BWY1rYckW4UZ6ZXW55nW5ZWW9WNS4kWtceUZokpRKsTYwhEaWi6bm6bJ+7y2.+ICv23tOLojwt7y9oKIKGolX4msyctSa+NaRIkjZQKZQU5iqtCXV9xWtLa1rWcNOxQNhSO168dumhIlX73w5rm8rpfBJnJs2rl0LuJl.Pnm8rm8316pLir9Bdzidz.xD7v0wAfyDRkXv4N24p4Lm4XHmqKdwKp0t105x97pu5qpLxHCCIdJu7x0G8Qejgbt.P3G2c8NfvQkTRI50e8W2s8KojRx.hFIqVspm8YeV21u10t142O2Wd8f5mVSpjjJszR0m9oepCetO4S9j5m+y+4d046rm8rN8CxO24NW6JV9dBGcWlHUYMqB.0tM24NW21GirNwN8oOc21mN1wN52Oubcb.3LgTIFzU2Jx9aMtwM1s84zm9zFPjTIOId...f+QAETf9s+1eqxLyLcaeOzgNTMdxAOyYNilzjljaWVyRUVukZaaaqe872vF1Paeui9.k6XG6vgOOylMqoLko30mussss4v1SN4j0u427a75wyYa7.W+0e8d8Xc4JnfBz12910oN0ojUqVqViUMoF23FqNzgN3zMV.fZirZ0pxHiLz+3e7Obae2291mt8a+1qQiGKVrnYMqY4Q2XI6cu6Ucu6c2ud9453NVYkUl1111lNwINQP8xRt90u9JwDSrFYx+.BoRL3nF0nTgEVnN24NmrXwht3EunNyYNixN6rc3sUrmncsqcxrYyJt3hy1RA9pu5qVSXBSvsO2wO9wqxJqLUPAE3WhGSlLoVzhVn3iOdESLwXW773O9i6K+3A...GHu7xSe0W8U5jm7jpnhJRVsZ01eGe+6e+d0lwSG5PGzfFzfTaaaakYylUTQEkpacqqhIlXTiabi0fG7fUbwEmKGiSdxSpsrksnbyMWakRjRKsTkSN4n8su8ou3K9BONdtga3FTZoklRLwDUSaZSUTQEkRJojzgNzgTSaZS0fG7f8pkukjzPG5P0sbK2hZTiZjZZSaZUNty1oj+8+9eua24JcDmMd+g+vevkkx.m4R6Bm+TcnCcvqGqKWO5QOzt10tpVigQ56+9uWMpQMJPGF.9EEUTQZiabi5XG6XpfBJPVsZUEWbw1tS01xV1hGW1R9c+temVvBVftsa61T7wGuhKt3TDQDghN5nU8pW8z.Fv.T7wGuKGiKbgKn0u90qidziphKtXaWG+G9gePG3.GPaaaayiimG4QdD8Vu0aotzktnl0rlo3hKNcS2zMou669NU+5WecG2wc30KqWtNti8jO4Sp+1e6uUsFCizZVyZpwShMBCUQsD4kWdU7RuzKUgjb6WokVZUjYlYVgUqVqwhmbyM2Jl9zmtGEOCaXCqhcu6cWQYkUVMV7...DLZO6YON7uMNiYLiZzyaO6YO8n+Fs+3q25sdK2FOImbxFV7rnEsH+9qmCZPCxgmqu669NeZ75ZW6pCGue7G+QudrJrvBc3XkXhI5Sw1kbwKdQC6+m4u9ZcqacUqelckDSLQGdNApoLsoMMC62cF9vGtaimm7IeRCKdF6XGqe+0yvwqi6p3LX8qoMsoUs+Y1YlvDlfCOme8W+00XmyZarXwhCeMbjibjA5Pykp0rqDa1rYM3AOX21ut10tpkrjknN0oN422omtbwGe7J0TS0s8qu8suZ9ye9p8su89zLm....umyVxT0D7j2ugmrjk8W72u+GqVspO9i+3pzdhIlnZYKaoWOdETPAZqacqUo8t28tqFzfF30imyV9Y20ccWd8Xc4pW8pWH0FCmISlT6ae6CzgAfey9129Lrykmbcy8u+8a.QRk72etwv0qiKoPt69tPo+tCBcDRsThcGmUGCtbSYJSQwFarFPz3Ywyy7LOihLxZU+uA..ffdibjiTyZVyxt1LYxjhKt3T8qe8UrwFqthq3JTrwFqhM1XUjQFohHhHT4kWtskG1Oc21tvBKT+3O9iRR1JoHcoKcwi9PGidziVuwa7F0HwykWdS5ZW6pee22zYKk1ANvA5Si2W8UekCau+8u+9z3srksLG1t+3CCt10tV8Mey2n7yOeUVYkUsGuZBQDQDpIMoIp8su8Nb4CBDp5tu66VKdwK1t19oW2L1XiUwEWbJlXhQQEUTJxHirJW2rrxJSVrXQW3BWPEVXgxhEKpnhJx10NaYKaoF9vGtaime4u7WpO7C+PCIdF1vFle5UwJENec7m8YeVkVZoobxIGURIkTsGuZJMrgMTst0s1q2zV.7D0pxHkmT+c5Se5SMef7es90ud21Guc2cB...Ueuxq7J5UdkWIPGF175u9q6Q6.xAit7c5xKWu6cu8owaCaXCNr8d0qd40ikEKVz69tuaUZ2jIS9b7c4pW8pmOEW.n5aHCYHZHCYHA5vvlQLhQnQLhQDnCCeR370wqScpit0a8Vq1iCPnrZUqc0O4S9DWd7TSMUUu5UOCJZjS2t2ujzSOcEczQaPQC...f+mylHzdzid3Si2ZVyZbX69xGb6y+7O2gaHb2+8e+d8FvB.PsUbcbfva0ZRL3wN1wzINwIbYeLx6VvCcnC41ccpewu3WXPQC...f+W4kWtV0pVUUZOojRRMoIMwqGOmUWpRIkT7oI28mtLCuj669tOudr..pMhqiCfZMIFzYEjzKWO6YOMfHoRadya1s8wWmAF...ffA6YO6wg2IG8qe8ymFOmUWp7k5H04O+407m+7qR6lMa1g0YwRJoDM4IOYMhQLBcjibDu97A.DJhqiCfZM0XPOo9B14N24Z9.4+xc0WPSlLoa5ltICJZ....7+9xu7KcX695je5r5RU26d285w58e+22gs+POzC4vM9sktzkpYLiYHoJuSYlzjljWeNA.B0v0wAPsl6XPOo9BFUTQYPQizpW8pc4wu8a+18ns8d...ffUqacqygs2st0MeZ7bVcopKcoKd8XM24NWG1ty1b.xHiLr88IlXhd84C.HTDWGG.0JRLnmTeA6ae6qAEMRG4HGwswC0WP...DJyY0kpDSLQ0rl0Lud7bVcop6cu65JthqvqFqCbfC3vxLS26d20Mdi2XUZeu6cu10edeZ.Hb.WGG.R0RRLXvV8EzShGpuf...HTlypKU8u+82mFOmUWp7kI20YuWrQMpQ4v1e629ss88O8S+zd8GfE.HTDWGG.R0RRLnypiAWtjSNYCHRpj6hGpuf...HTmypKU8pW8xmFOm89m7kIS0YEc9zRKspz1t28t0e8u9Ws83INwI50mOHUXgE5v1KqrxL3HA.dJtNNtbEUTQNrcKVrXvQBLZ0JRLn6pmeCZPCxPqufe1m8Yt73TeAA..Pnt0t105v18kBLujyqKU9RctxQKANylMqF23FaWaVrXQO3C9f1d7TlxTTSZRS75yW3tybly3zxnyANvAL3nA.dJtNNtjxKubsqcsKGdr8rm8XvQCLZg7IF73G+35vG9vtrO8oO8wfhFoSbhS313g5c....BkY0pUGNwrIlXh55ZZnV...H.jDQAQ0ZtlqwqGOWUWpLYxjWOd8t28tJsU+5We6dbQEUjdjG4QTlYlojjZYKaodhm3I75yU3pRKsTkSN4nUtxUp69tuam1uzSOc89u+6qidzipRJoDCLBAfqv0wQYkUl99u+60l27l0C+vOr1111lC62XFyXzq8Zul1291mt3EunAGkvHT0836PLTeAA...LVNqtTMfAL.eZ71912tCaue8qe9z30t10NY1rYke94aqsCe3CqbxIGEe7wqcricnQO5Qa6CSJIs7kub0fFz.e57Ua2e7O9G0rl0rr8XG8+6clrxJK8q9U+J6Z6xSRPKZQK3tQAH.fqiGd4i+3OVCcnC01i8lqiKIM1wNV6d7OMYu6XG6Psrksz2CPDPExmXv0u90619zoN0ICHRpD0WP...Ta2YO6YcX6Np1O4IN24NmCaefCbf9z3EQDQnUtxUpTRIE69vO2vMbCRx9OPjISlzZVyZTRIkjOctBGr90udu9CQ5JW9XclybF+13B.OGWGO7x1111pwtNtTkKEYD5JjOwfTeAA...LVcpScRlLYxtOXP5omtOW9Vt0a8VqRaibjiTcoKcwmiwjSNYst0sNce228YqLu7S+fL268du5EewWTspUsxmOOgSLYxjhKt3TzQGspW8pmhM1XUjQFohN5nUrwFqhJpnTDQTYkJp7xKWEWbwpzRKUVrXQEWbwxpUqpvBKTVrXQEUTQpfBJP21scaA3ep.BOw0wCOc4WG+RW6N1XiUQGczJpnhx1WRUdc7RKsTaWGujRJQEWbwU453IjPBUo1OhPKgzIFzSpuf9xVituJ2byUYkUVtrOTeAA..PntF1vFpssssoEtvEpyd1yp90u9oALfA3yS940bMWi14N2oV7hWrJt3hU+5W+T+6e+q1wYm6bmUVYkkV6ZWqxLyL0wN1wTrwFqZe6aut0a8V0Mey2b09bDNvY6bo.HzEWGO7xTm5T0Tm5TCzgABRERmXvfs5K3l27lcaen9BB..fZCZaaaql1zllea7RJojpQVFX0st0U8u+82u7ATA.pMgqiC.oP7ckXpuf.........9lP5DC5t5KXZoklhLRi6lhj5KH........BUDxlXvSbhS315KnuV3T8Em9zmV6cu60k8g5KH........BVDxlXPOoHHaj0Wvsrks319P8ED........AKBYSLnmTeA6XG6nADIUh5KH........BkDxlXvfs5K3ZVyZb4wo9BB.......ffIFWly7i7j5K3JVwJTyZVyLnHRJ+7y2kGm5KXnuCdvCpu5q9JcxSdRURIkDnCmZL0oN0QMsoMUsoMsg+cK......PsXgjIFzSpufRtOYcFIpufg1N5QOpRLwDCzggg6Ue0WUicriMPGF.......nFPH4RI1c0yufMTeAC88Mey2DnCg.h0st0EnCA.......TCIj7NF7S+zO0kGOojRRCbfCzfhFooO8o6xiS8ELzWaZSaBzgP.QaaaaCzg........pgDxkXvSdxS515K3XFyXz3G+3Mj34Tm5TtMwfTm1B8kTRIoEu3Eq0rl0nbxImZ00Xv5V25p3iOd0111V8XO1iEnCG.......TCIjKwfdR8EzHqmeaZSaxs8g5KXsCCYHCQCYHCIPGF........9Egb0Xv0u906xiaxjI0912dCJZj9hu3Kb4wo9BB.......ffQgbIFzc0Wv92+9an0yuUu5U6xiS8ED........AiBoRLnmTeA6Se5iAEMR4jSNJqrxxk8g5KH........BFERUiAo9BB.GY+6e+5Tm5TA5v.vvkPBInV25VGnCC.....DhJjJwfaXCavkG2nqmeAawCP3poO8oq4O+4GnCC.C2Dm3D0e+u+2CzgA.....BQERsThW0pVkKOtQWO+9jO4Sb4wo9BB.......ffUgLIFLmbxInq9B5t3g5KH........BVExrThC1pmeAawCP3r69tuac8W+0GnCC.CW25V2Bzg......BgExjXvu3K9BWdbSlLoa9luYiIXjmEOTeAALF28ce25tu66NPGF.......gTBYVJwtq9B1291WEYjFWdNC1p2g.........diPhDC5I0yuTRIEiIXD0WP........D5KjHwfdR87qm8rmFPjTIpuf........HTWHQMFbCaXCtsOcnCcv.hjJ4t3g5KXsSe629sZyady5jm7jp3hKNPGN0XhHhHTSaZSUhIlntq65tTDQDRL+A.......vKERjXvUu5U6ximVZoYn0WP2EOFU8E77m+75G+weTMtwMV0qd0ymGmyblynhJpHYxjI0fFzfpchfxKu7TYkUlZbiarhIlXpViUvhCcnCojSN4.cXX3doW5kzi+3OdfNL.......PMff9aEnbxIGkUVY4x9Xj0WvbyMW2FO0j0WPqVspYO6YqV0pVoF1vFpq8ZuVcEWwUn1111pm8YeVUXgE5xmeEUTgV0pVkF0nFk5QO5gZPCZfZZSapt1q8Z0UcUWkpacqqFv.Ffd8W+0c6Xco3YwKdwZbiab1Fu3iOd07l2bEarwpFzfFngO7gqksrkIqVs5udYvvsicri.cHDPr4Mu4.cH.......fZHA8IFj5K3+SEUTgF1vFllvDlPU17SxJqrze9O+mU25V2zANvApxys7xKWKdwKVcricTolZp5Mey2TaZSaRETPAUoue5m9oZLiYLJ93iWabiazgwhUqV0hVzhTaaaa0PG5PUFYjgCGuBJn.8u9W+KcO2y8nN24NqcsqcUMdEHvocsqcA5PHffkDO......PsWA8KkXOo9B1wN1QCHRpTfr9BNyYNSszktTIIY1rY8vO7CqF0nFom3IdBa8YW6ZW5FtgaPey27MpyctyRR5rm8r5AevGTqXEqvt3LkTRQcnCcPspUsR4latZkqbk1kHvBJn.0qd0Ks10tV0291Wasmat4p65ttKssssspLdcpScRspUsRG8nGUqXEqvt9rqcsK0idzCs8suc0l1zF++KP0fZW6Zm9jO4SzZW6ZUt4lqJojRBzgTMlHhHBEe7wq1111pG9ge3.c3.......fZHA8IFzc0yuAMnAonhJJCJZp7toyUpopufe8W+0ZxSdxRpxjvsoMsI05V2ZIIURIknoLkoXW+mvDlf17l2r1+92uF7fGrc2ggOyy7LZhSbh5ptpqxtmyjm7j0C8POjd629ssq8QO5Qqcu6cq3hKN8+8+8+oANvApSbhSX63yblyTSXBSPwEWb187dxm7I0u7W9K0G+wers1JnfBz8e+2u1912tu+hQ.RpolpRM0TCzgA.7iN4IOot5q9pYS1A.....gkBp+jPAa0Wv7xKu.V8EbpScp19924cdGaIETR1ty.ubacqaUqcsqUojRJ1RJXW5RWzIO4I0y9rOaURJnjTcpSczrm8rqR6G9vGV+m+y+Qe629sJojRxVRASO8zUt4lqdhm3IpRRAkjhN5n0K+xubUZOyLyzoKQY..ivYO6YUG5PGTBIjfZSaZiN6YOafNj......LbA02wfAa0WPOYiXnln9BtqcsKsxUtRIIkXhIp67NuS6N90bMWiCed8qe8y12mZpopkrjkn5W+56xyU8pW8T+5W+zZVyZrq828ceWsksrEaO9AdfGPyadyys6FzspUsRsrksrJ0DwMrgMXn++N.fK2rl0rrUySO7gOr9xu7KUZokV.NpPnhMu4MqLxHCclybFEYjQpHiLREUTQo3hKNESLwnXhIFaeezQGshJpnrs5FrZ0pJszRkEKVTIkThJojRTwEWrsuJojRjUqVkUqVU8qe80K+xurt5q9pcY7rgMrA8Fuwanu+6+dGFOwFarJ1Xi0V7DczQa6ue6MwiISlzrm8rUSZRSpweMF.HbRN4jidgW3ET1YmshHhHTjQFohN5nUrwFqhN5ns6uub4+skHhHBaWi1hEK1tt8O8+doiGYjQpIMoIod0qd4x34XG6X5EewWTG8nGsJwyk96IW5qXiMVa+cNOMdrXwhrZ0phN5n0jm7jUW6ZWMnWoAfiDTmXPOo9B1oN0ICHRpTfp9BtvEtPae+i8XOVUVxaG+3G2kO+TRIE8AevGnniNZO574n6lvO7C+Pae+HG4H0bm6b83kLsiRF4OMQg..FEKVrTk6N5F1vFFfhFDJZxSdxF1c9dG6XG0S+zOsK6yjlzjrql9VSpqcsqZhSbhFx4B.Hbwbm6b0blybLjy0Eu3E0ZW6ZcYed0W8UUFYjggDOkWd45i9nOxPNW.vwBpWJwexm7It73olZpdbxt7GbW8Nrln9BVd4kq4Mu4Y6wN5NZYm6bmN84a1rY8du264UuNclybFmdrjSNYkQFY3U+blc1YWk1Jt3h83mO.f+zG+werxO+7s83DRHA08t28.XDgPM4kWdF14xQSV2OUt4lqADIUxShG..3cb0m+xeqwMtwtsOm9zm1.hjJ4IwC.pYEzdGCtm8rG2dWkYj0Wvidzip8t285x9TSTeA24N2osO.aRIkjZQKZQU5iqtSFW9xWtLa1rWcNOxQNhSO168dumhIlX73w5rm8rpfBJnJs2rl0LuJl..7WdsW60r6wO5i9n0HaZTn1qoO8oq2+8eecwKdQYwhEc9yedOpND6LlLYRsoMsQMtwM11x0J5niVst0sVCe3C2sO++9e+uqO3C9.UTQEIKVrnyctyoSe5S6ywiYylUBIjPUhma7FuQce2284SiI..btQMpQoBKrPctycNYwhEcwKdQclybFkc1Y6vOKkmncsqcxrYyJt3hy10xu5q9p0DlvDb6yc7ie7prxJSETPA9k3wjISpEsnEJ93iWwDSL1EOO9i+39xOd.vOJnMwfycty0s8I4jS1.hjJM8oOc21mN1wN52OuWdc86mVaAkjJszRc5Nk7S9jOo94+7etWc9N6YOqSSH6bm6bsaSOwS3n6VPoJq8f..Fsu669tpbMyQLhQ32F+u+6+ds0stUkWd4o7xKO8i+3Oplzjlnq+5udcsW60pVzhVnl0rlwtfbHtzSOckd5oWk1qnhJT1Ymsl5TmpVvBVfaGmm5odJMlwLFccW20Ushm68duWcu268Vk1Ku7xU1Ymsdpm5ozRW5Rc637BuvKnQNxQ5zZWL..pYjTRI4zO+a94muV3BWnGUFGRKszzzl1zTRIkT0ZROSN4jsaUqc4N0oNkl+7mul7jmraGmgMrgom9oeZci23Mx68AHHVPWhAsZ0pxHiLz+3e7Obae2291mt8a+1qQiGKVrnYMqY4Q0Xg8t2852WNZWdcuxQIFbG6XGN74Y1rYMkoLEu974rZTTxImr9M+leiWOdNaCj45u9q2qGK.fpq4O+4a2iuu669T7wGe0ZLuvEtfdy27M069tuqGWm2F1vFl9s+1eqWO4MH3VcpScTKaYKUe6aecahAm3Dmn9K+k+RMZ7DQDQnV0pVoTRIE2lXvoN0o51ZYH..LdlMaVCdvC1sIFrqcsqZIKYIJ1XisFMdhO93UpolpaSLXe6ae07m+7c6lUI.B7L7eKsnhJRabiaTG6XGSETPAxpUqp3hK11cp1V1xVrq1O4J+te2uSKXAKP21scaJ93iWwEWbJhHhPQGczpd0qdZ.CX.t8C7cgKbAs90udczidTUbwEaa246G9gePG3.GPaaaayiimG4QdD8Vu0aotzktnl0rlo3hKNcS2zMou669NU+5WecG2wc30Kq2gNzgpa4VtE0nF0H0zl1zpbbmU7y+8+9eua2AhcDmMd+g+vevmlkmKsaJ+S0gNzAudr..pNrXwRUlzoQO5Q6yiWYkUll0rlk9S+o+jWurZV3BWnV3BWnRN4j0i+3Ottm64dTbwEmOGKH3xke296L9xj24q7j3YRSZRFPj...egmLwiSYJSoFOofWhmDOOyy7LjTPfPDF9uo9W+q+U8m+y+Y+13ssssMmdgogO7gq24cdGW97e9m+40LlwL7awyV25V0V25Vc3wF6XGqd0W8U8pwKhHhPssss0oG+y+7O2gs6nkTjm3y9rOygsmZpo50iUQEUjCSLXhIlnRHgD75wC.n53+7e9O1k.uKcmc4KxO+70HFwHpxxR1jIS5W8q9Up0st0pYMqYpfBJPG4HGQu+6+95Dm3DUYbxLyL0HFwHzzm9z0G9genWWtFPvI2s4okRJonF0nFYPQi627zFzfFjthq3JLnnA..dqu3K9B21m9zm9TyGH+Wqe8q2s8gUEAPnCCOwf6ae6yvNWdRcUX+6e+FPjTI+ccUvpUq5i+3OtJsmXhIpV1xV50iWAETfCSpY26d2UCZPC75wyYKi365ttKudr..ptd8W+0s6wicri0mtt7oO8oU25V2rqdrlbxIqm5odJMnAMHGdm+8O9G+CsoMsI8fO3C5v535d26dUxImr92+6+s5e+6uWGSH3wwN1wbXRfubCbfCzfhFoCdvC51U9fuL4e..v33tIbJ0TSU0qd0yfhF4zZb+kjd5oqniNZCJZ.P0kgmXv69tuas3EuX6ZyjISJt3hS0u90WwFarJ1XiUwEWbJlXhQQEUTJxHiTkWd41VlukVZoprxJSVrXQW3BWPEVXgxhEKpnhJx1cCRKaYK8ncxue4u7WpO7C+PCIdF1vFle5UwJsqcsKG1tu9AN9pu5qbX695GRcYKaYNr8Z55BI.vOki1zQ7j+FwOUgEVnFzfFjcI2ahSbhZ5Se5t7M.Wm5TG0idzCs8suc8HOxi3v58VAETfti63NzN24NURIkjWGaH3fylTrKWO6YOMfHoRdR7zidzCCHR..fuvSlvIi7tE7PG5PtcBm9E+hegAEM.vevvSL3PFxPzPFxPL5SqSMhQLB+5NRoQxY0Lnd26d6Si2F1vFbX68pW8xqGKKVrn28ce2pztISl743C.vW81u8aa2i80McjYNyYZW4qXAKXA5AdfGvie9W4Udk58du2ScricT+w+3ezg8I8zSWae6aWW4Udkdc7g.OOY4dkbxIWyGH+Wta4dYxjIcS2zMYPQC..7VAaS3zl27lcaeXBm.BsvdFdHLm8l880KDul0rFG19sdq2pWOVe9m+4NrX7e+2+8qXhIFud7..7UVrXQu7K+x101i7HOhWONYmc1ZZSaZ1d7HG4H8pjBdI0oN0QO4S9jNM4PG9vGVO2y8bd83hfCdxx8xHWdUtKdt8a+18nRuB..BL7jIbpycty07Ax+ES3DPsOjXvPTkWd4ZUqZUUo8jRJI0jlzDud7bV8ELkTRwmpWE+zkK9kbe22840iEfQq3hKVG6XGSG5PGREVXgA5vAUSNZSGwWVxM+q+0+xtG+BuvK3ywTcqac0e+u+2c5wei23MzEu3E84wGAFdxx8xW2va7EYmc1rbu..Bw4IS3TTQEkAEMteCshIbBHzCIFLD0d1ydb3cjW+5W+7owyY0WPeod.d9yedM+4O+pztYylUJojRUZujRJQSdxSViXDiPG4HGwqOe.UGVsZUqe8qW+9e+uWcnCcPMnAMPwEWb55ttqSsoMsQWwUbEpAMnApacqa5W+q+05O9G+i58du2SEUTQA5PGdnLxHC6d73F237oMcjeZhAadyatF3.GnN0oNkOEW8t28Vomd5N7XETPAZIKYI9z3h.mfsk6E0WP.fPaAaS3zQNxQba7vDNAD5wvqwfv+3K+xuzgs6quAemUeA6d26tWOVu+6+9Nr8G5gdHEYjU8exszktTMiYLCIU4c73jlzj75yIf25rm8rZFyXFZNyYNNLI6WtKcG0d42UslLYRicriUO7C+vpssss0zgK7QG5PGpJkIAeYSG4hW7hJqrxpJsuxUtRcO2y83zqI6N24cdmZ4Ke4N7XaXCaP+leyuwmFWDXDrUeAc1ea+RX4dA.DbiIbB.FAtiACQst0sNG1d25V27owyY0Wvtzkt30i0bm6bcX6NaSd4xuadRLwD85yGf2vpUqJiLxPW20ccZFyXFtMofNSAETf9q+0+ptga3Fzu3W7Kb6xp.AFyadyytGee228ol0rl40iSN4jiSO1l1zlT1YmsWOlRR2vMbCN8XG7fGzmFSD37Ye1m4xiOnAMHCc4dsxUtRWdbVtW..A2b2D7HwDNAfpOtiACA4r5KXhIlnO8AdcV8Er6cu65JthqvqFqCbfC3vYRp6cu65FuwarJsu28tW65O254nlzYO6Y0PFxPbXhvMa1r5RW5hZe6auRLwDULwDiN4IOoN7gOrVzhVjKSf3m+4et97O+y0S9jOodtm64LzO3ObtRJoDMqYMK6ZaLiYL9zX4tkN9YNyYzO6m8y75w0USFBIFLzxwO9w0gO7gcYe7kZaou53G+3rbu..Bw4tId1nmvI2MAXLgS.glHwfgfbV8Er+8u+9z34r5KnuTuJb1sW9nF0nbX6u8a+1199m9oeZuNQj.dpibjin63NtiprbPSLwD0e4u7WT5omtSq6byZVyRqZUqRO+y+7ZaaaaN8bLiYLC8ke4Wp268dO07l2b+Z7Cumi1zQbTcN0S3nI13x4KIETR5JuxqzoGycaZDH3BK2K..3OErMgSm3DmvswCS3DPnIVJwgfbVsrpW8pW9z34raIbe4CL3rMOjzRKspz1t28t0e8u9Ws83INwI50mO.OQd4kmtsa61rKoflMaVKXAKP6YO6Q+pe0uxkaFEQGcz5Nuy6TadyaVO2y8bt7bsoMsIci23Mp8u+862h+7yOekSN4nRKsTedLJqrxTN4jixImbzEtvEp1wjUqV0INwIT94murZ0Z0d7pI7Zu1qY2iG+3GuOsoiHIEUTQ4zcU890u94S6F7Rxk2QWTZEBsr90ud21mN0oNY.QRkX4dA.DZiIbB.FERLXHn0t105v18kMJDImWeA8k5UniVJylMaVMtwM1t1rXwhdvG7As83oLko3yevZ.WozRKU268du1c2WY1rYsoMsI8.OvC3vMDGmIxHiTSYJSQe3G9gtreETPA5ttq6xmqegRUtrmerG6wTCZPCTyZVyTyadyUzQGs5Uu5kVvBVfae9EUTQ5sdq2R+5e8uVcnCcPQFYjp4Mu4p4Mu4xjISpYMqYZHCYH5i+3OVkWd4tc7N24Nmd4W9k0HFwHTG5PGTTQEkZQKZgZVyZlsu+2+6+8dzaZzH3nMcjG3Adfp0X95u9qq65ttK6ZK0TS0i9+GNii1PStj12916yiKLdAaK2qO8S+TWdbVtW..A2XBm.fQgkRbHFqVs5vO7QhIlntlq4Z75wyU0WPSlL40iWu6cuqRa0u902tGWTQEowMtwoLyLSIU4x66IdhmvqOW.dhoLkonMtwMZ6wlMaVe4W9kp0st097Xdm24cp23MdCM5QOZm1mrxJKMpQMJs3EuXUm5TGuZ7O6YOqtka4Vb3x0XiabiZiabi5+7e9O50e8WWMrgMztie9yedkQFYn+1e6u4xkhZ94muVxRVhVxRVhRN4j0G9genRHgDpR+N+4Oul8rmsdwW7EcYhNOwINgdoW5kzK8RujRO8z0bm6bUiZTi7hep8udq25sr6w2+8e+9TMX8x0vF1P8AevGnSbhSnScpSoq4ZtFe55tWt8su84zi4pMlDDbwSVtW9R44vWkSN4vx8B.HDWv1DNQ8EDn1KRLXHFmUeAGv.FfOMdae6a2gs2u90OeZ7ZW6ZmLa1rcIj3vG9vJmbxQwGe7ZG6XGZzidz1RJnjzxW9xUCZPC7oyGfqbfCb.MyYNSaO1jISZCaXCpMsoMU6wdTiZT5e+u+2t7txYIKYIpG8nG5QezG0iG2xJqLM7gObaen9jRJI8q+0+Zkat4p+w+3eX2X+Mey2nu8a+Va+9yd26dU5omtc2EZIjPBpW8pW5ltoaRIjPBZO6YOZ4Ke410mLyLS04N2YsyctSEe7waq8st0sp92+9Wk5zWW6ZWUG5PGT7wGu18t2sVzhVjcKI1ku7kq7yOes5UuZUu5UOO9mc+kRJoD8O+m+S6Z6QdjGwuM9IjPBNLIp9h2+8eemdLiLQRn5IXa4ds4MuY21GVtW..AuB1lvobyMWWtJGjXBm.BoUABort0stJjTU9ZMqYM9z3s7kubGNde8W+09bLt8su8JLYxjcimISlbXaacqa0mOO.ty8e+2uc+at+4+7e5WG+0u906ve+4m9uyuvEtfGOl+s+1ey1ysKcoKUbwKdQaGqu8suUY7e5m9oqnhJp5uKa1r4Jdq25spnzRKsJmiyd1yVQRIkTUFqgO7gaqOKYIKwtikPBITwxV1xpn7xKuJi2INwIpHgDRnJi2e3O7G7lWN8aV5RWpcwQKaYKqnrxJKfDKtxW+0esS+2MIkTRN705Zi1yd1iCeMXFyXFA5PyiM1wNV2ds.G86h0TdzG8Qc60krZ0pgEO..v6rnEsH292UpNedMu0+9e+uca7ricrCCKd.BVYwhEG96GibjiLPGZtD0XvPLcpScpJKw2zSOcedGo5Vu0asJsMxQNR0ktzEeZ7jjRN4j05V25TKaYKs0VAETfc20Q268du5a+1uU21sca974AvU1291mV7hWrsGa1rY8vO7C6WOG8pW8Rcsqc0k8ofBJPu268ddz3cgKbAM0oNUaO9C9fOvt63NG86KyctyUqd0qVomd51Z6QdjGQYmc1527a9MNrFJdkW4UpW4Udkpz9BVvBTN4jidq25srai1XZSaZ5fG7f5W9K+kNbYQ27l2b8BuvKTk1m4LmY0pNK5qd0W8Us6w+1e6u0m2zQpIc4a9R+TSdxS1qWB5HvwcK2qzRKMupdlVcQ8ED.HzF0WP.XjXoDGhogMrgZaaaaZgKbg5rm8rpe8qeZ.CX.97av+ZtlqQ6bm6TKdwKVEWbwpe8qep+8u+U63ryctyJqrxRqcsqUYlYl5XG6XJ1XiUsu8sW25sdq5lu4atZeN.bkO3C9.6d7zm9zUrwFqe+7LkoLEM3AOXW1mW9keY8POzC41w5cdm2wVhzF6XGaUpecNZ4qle94q63BljDz....B.IQTPTMtCaO9O8m9SZpScptMoRNayE5O8m9S5Mey2z1imybliF23FmaicmM4D6XG6vPWBkG7fGTe9m+410V0cSGolv+2+2+mV5RWpCOV26d208bO2iAGQvWchSbB2tbu70IuyWje94yx8B.HDWv1DNQ8EDn1MRLXHn1111poMso42FujRJIkTRI42FuKot0stp+8u+9kDMB3sV9xWtcO9gdnGRSe5SW8rm8TiXDiP8pW8xubdRM0TU6ZW6zd26dcZe10t1k15V2pau6Bu7Dx4njwcricLW97elm4Y73qMDczQKSlLUk6nuKOFl6bmqGeWV5rZI3QNxQLzDC9S2zQF1vFlLa1rgc98DkTRINMYklLYRKdwK1PKl3n54K+xuzs8wH+cfsrks319P8ED.H3Uv1DNc5SeZW99bkXBm.B0E7s1p..plN8oOs1111VUZOqrxRu4a9lp28t2tbSevaDQDQ3QE+Y2MSqG3.GvtcpaGkrdG8yzkjZpop+7e9O6133RrZ0pKWluO5i9nd0RuNmbxwgsWRIk3wiQ0UIkThl8rmscsMpQMJC676ol5Tmp10t1kCO1+9e+u8aarIvX3IK2qN1wNZ.QRkX4dA.DZiIbB.FMRLH.p04x2gbcle0u5W4xDs4MZUqZka6yQNxQb4wWyZVisu+tu66tJG2hEKUYIxdIlMaV+q+0+xqVBG4kWdN8XIkTR1saN6IN5QOpCauoMsod03Tc7QezGUkcP4d26daXmeOwpW8p0zm9zc3wVzhVD2g0gfX4dA..+IlvI.XzHwf.nVmScpS4Q8akqbk9ky2O6m8ybae9tu66b4wu72z0kWy.uju8a+Vm9beq25sTiZTibaLb41wN1gSO1BW3B855wny9465u9q2qFmpiLxHC6dbv1lNxt28tc3+uUpx6Tv6+9ueCNhP0kmrbu7j6nX+ke3G9Amd2ndIrbu..BtErMgSW9jW6HLgS.g9nFCBfZcb0cC2ka0qd05O8m9SU6ymmjXP2UaVtxq7JkTky5piVNFaZSaxgOuzRKMMnAMHOHJs2l27lcX6OwS7Dp8su8d83st0sNG190ccWmWOV9hf8Mcjie7iqTSMUGdrO4S9DmdLDbySVtWSbhSTu3K9hFPzHUTQE419vx8B.H3kmLgSqXEqPMqYMyfhnJ2TqbElvIfPejXP.Tqimd2tc1ydV+x4ySR9U94murXwhhN5nc3wekW4Uzi8XOl9Y+relC2HOb1xHdxSdxdWv5lw62869cd8XYwhE8ge3GVk1aYKaosDdVSKXdSG4nG8npG8nGUYItmPBInUtxUxxuIDlmrbujb+Gpxnvx8B.H3lmLgSRAO+cEIlvIfZCBdViU..9IW60dsdT+5V25le47U+5WeOpeVsZ0oGK1XiUsu8s2gIErzRKUe7G+wUo8DRHAe5mgBJn.s0st0pzdW6ZW8oM9hu9q+ZG19fG7f85wxW3nMcjQO5QaHma24HG4HNLof8rm8TYlYljjlPbta4dErgk6E.PvM2UO+B1vDNAT6.2wf.nVmN0oNISlL4xccWIod0qd4WNe+3O9idT+bTR+7DNqd.d228cq5Tm530i2W8UekCae.CX.d8XI47ZOS+5W+7owyaErtoib3CeX06d26pjTvINwIpYLiYnnhJp.TjA+gSdxS51k6UZoklOsz7803YAKXAtrOrbu..Bt8oe5m5ximTRIoANvAZPQib5Fl1kvDNAT6.IFD.05DWbwo+4+7epG7AePm1mAMnAogMrg4WNem9zm1s8o5rrVcV8.zW2TCb1rQ6qIJ8e8u9WNr8d1yd5Sim25mtoiLgILAeJgo9SG5PGRcu6cuJK0mEtvEpgNzgFfhJ3O4IK2qm+4edkTRIY.QizxV1xbahAY4dA.D7xSlvowLlwnwO9waHwyoN0obahAYBm.pcfDCBfZkFwHFghJpnzi+3OdURNyDm3D0zl1z7a6nataW.Upx6hMekypiY95Gx2Y2ge21scad8X8se625v2DaZoklZXCanWOddqCbfCDzsoibvCdP0idzC692clMaVqZUqRcpScJ.FYvexc0WPid4UErEOH7UgEVndkW4UTAETf5V25lgUVI.B04IS3jQNAONaiu6xwDNAiPEUTgVvBVf1291mRHgDz3F23TDQPUwyehDCBfZsF5PGpFxPFh18t2sN1wNlZXCantoa5lzUcUWke873n502OkutzVKu7x0m8YeVUZucsqcpoMsod834r5KXJojhOsTmW5RWpCaeHCYHd8X4Kl27lmcOdXCaX9zqK9KG3.GP8pW8xtjB18t2csrksLOdGD7i+3OVETPApN0oNF1qiv64tk6U+6e+Mz2zp6hGVtWvHjYlYpgNzgprxJKIUYBoO+4Oe.Np.BM3ISviQUdJjj9hu3Kb4wYBmfQHu7xSidziVqXEqvVa8oO8QsqcsK.FU09PhAAPsZQDQDJojRpFc47spUsJ21GecY0tm8rGGVqD805Anypuf9xRAorxJyoKcQi3NDo3hKVyYNywt1djG4QpwOuNy92+9Uu6cusKofO3C9f50dsWSwDSLdzXTQEUngNzgpBJn.YxjIRLXPJOY4d0m9zGCJZjxM2bskHFmgk6EpIUXgEpYMqYoIO4IaW6tqV+Bf+GOYBmLxI3wcavVLgSnlTYkUlVwJVgFwHFQU9aIEVXgAnnp1KRLH.P0vV25V0d26dcYeLYxjOeGC5rkUhuNdNq9B5Ki2F1vFpxFqgjz8ce2mCWFwYmc1Z5Se5J5niVuzK8RU6kx8JVwJpxlNh+ZCkwas28tW0m9zG6RJ3y8bOm9i+w+nWUuCO1wNlsel5bm6reONg+Qv1x8JXKdP3gRKsTst0sNsnEsH81u8aGnCGfPZAaS3TN4jCS3DBHxLyL0RVxRz7l27pR4f5RpnhJL3np1ORLH.P0va7Fuga6y3G+3U8qe88owecqacNr8t0st4Simypuf9RRndm24cbX6ibjizgs+BuvKn27MeSIUYc.zWpogWte5cK3i9nOZ.YSGY26d25m+y+41kjxEu3E6S2seW9NP8Mey2reI9f+WvV87yYI7+RX4dgpiScpSoksrkoRJoDc9yedcvCdPs+8uekYlYFnCMDDXsqcsJqrxR4kWdxhEKA5vwuHlXhQMoIMQcsqc0vljtfsI3g5KHpo8+u8t2CNpqt++i+RjDRBrnRf.Uz4aa.WvP6Bl1foMHDnFtXDPzBdCjn38h1oshzQsUk1YpfsZKVEvhPqUAATPDTffAJpHhQPHsDBEEDEBPlnAIja6tY2e+A+Xmrre1r22MjOOeLSlI6Y+jy4cVFxY22eNm2m4O+4qFarQUWc0oCdvCpJpnBUVYkwJMOAgDCB.DlpolZzhVzhB30cO2y8DV8uKWtLbaJa0p0nZ8ELu7xKjqufm3DmvvUHRFYjgJnfBL75OSRAkhrCiEoSWK+N6ZeSh3PGorxJSCYHCwyahwhEKZcqacJu7xKr5uRJoDOeO0Nk1tZqUO+X6dgXou3K9BM8oO8DcXf1fdkW4UzTlxTRzgQL0N24NiKGbXs0tAOs0hGz9y8ce2WhNDPKvQ4B.PXZIKYIA7ZdjG4Qz26688Bq92e0WvQNxQFV8Wzr9BtxUtRCa+9u+62vsHbKOjRFwHFQDe.gb1G5HSdxSVcu6cOh5yP0t28t8JofYlYlpzRKMrSJXSM0jV1xVlmG2+92+nRbhnqJqrx.tcuFwHFQbJZX6dgDKa1roG+webs+8ueY0p0Dc3f3L+89JZOIXNf4hFBT8pNdeCddm24cZ0mma3DhUxLyL08du2q15V2J2Tp3HVwf..gAmNcp4N241pWSlYlodzG8QC6wveaqjvsN54u69a3bvn3uSpta8VuUeZysa2Z9ye9dd7Lm4LC4wqkL5PG4ttq6Jh5yP0m9oepF1vFlmjBlQFYnUspUoK5htH+VOTNC2tcKWtbImNcplZpIUas0pSbhSnku7k60Oa+5W+ho+NfvSvr8pB2jCGNX6dgXsK8RuTMm4LG0wN1Q00t1U08t2c06d2akUVYEVml8n8i34IjahxkcYWVLeLBla3T7t9BFn3ga3DhTyYNyQm+4e9J0TSU8nG8P8pW8RYkUVpacqadtlktzkl.iPyERLH.PXXAKXAAbU5r3Eu3H5CM4u5KX3lzA+UeAG7fGbH2W6e+62m1rYyl5ae6qOsu3EuXO0hpbyM2vdEOdFqd0q1qURoUqVC6S84vwN1wNzvG9v8JFppppz.G3.iZigEKVz2467chZ8Ghd7WRwOCKVrDWqOjAS7v18BQhd26dqYLiYjnCCzFzse62tb3vg18t2spt5pkSmNSzgTTQJojh5cu6sxImbhKI.qs1M3osV7f1mXdk1VHwf..gnJqrx.tz1m6bmaDcB41byM625K3EewWbH2em7jmzvsCSt4lq5ZW6ZH2e8t281m1LJwXG7fGTSaZSyyiexm7IC4w5r0xUenzo29xwqCcjO9i+Xc0W8UGyKLxCZPCJl1+H7Ens60HFwHh3Sb6PQasseF.LO5Tm5jdfG3ARzgw473FNAfDMpwf..gne8u9W2pO+Tm5Ti32n7t28tip0WP+UibB296pu5q1m15bm6rWO9vG9v5m8y9Ydd7McS2TDuZAqnhJ74MrZz1WNVX6ae6wkjBJwIRbaUrcu..PzF2vI.jnwJFD.HDTbwEqW60dM+97iZTixmUzV3XaaaaF1d3lzA+kXvgMrgEV8mQwwG9genb3vgZt4l0F23F0sdq2pmjnY0pUsfErfvZrZoy9PGYJSYJwkCcjSdxSpwMtwEWRJnDmHwsU0Va6U0VKd..PnIXtAO4me9wmfQbCm.LqXECB.DjN0oNktu66976ymWd4o23MdCkRJoDwi0W+0esgsGtm1om3Dmvm1rXwRXWuB6W+5mdoW5k7psxJqLkd5oqTSMUuRhV1Ymsdu268BqsrbK0PCMn4Mu44UawqCcjCdvCFvCUjnoK+xu731XgfWf1dURFuk5iU72AJzYv18B.nssf4F7DOqixbCm.LmHwf..AA2tcqoMso426hpMa1zZVyZ7Y6zFtLZE48rO6ypK7Buvvp+LJghyctyUcpScJr5OIo63NtCs3EuXYwhEOsc1qntYNyYpMu4Mqd1ydF1iyYXzgNR75MmFtutGt3DItso28ce2V84G6XGabc6dUbwE2pOOa2K.f11BzM3Qha3D.h8XqDC.DDlybliV9xWtgOWN4jiV+5WutnK5hhZi2UcUWkJojRzZW6ZUJojhF23FmxM2bC696Zu1qUqcsqUEWbw5htnKRiabiSYmc1QbbVTQEoINwIp0rl0n8su8oibjind0qdorxJKMzgNzv5fRwedgW3E75wSe5SOtcni7+8+8+I2tcGWFKz1TkUVY.OIxi20Wv.EOwqs60IO4I029seqRO8zinSh8pqtZ0PCMHKVrnt10tpNzgH69We7ieb0byMqzSO8H5lf..DqDnaviY8FNw7J.wWjXP.f.X8qe8527a9MF9b4kWd5se62VWvEbAQ8wcDiXDg8VG1HEVXgpvBKLp0emQm6bm0McS2TTueaoJpnB89u+66Ua2xsbKwzwDnkZqs8p9vO7CC30DKiGmNcpErfEnm4YdFuVI0VsZU25sdq5gdnGpU+vbtc6VaXCaPu9q+5phJpPkUVY9rhiG0nFkt9q+50jm7jC3GLzoSm50e8WWaYKaQ+m+y+wm9yhEKZ7ie755ttqSie7iOt9AsA.LRvbCdhm0WvidzilPugSLuBPBja..3W6e+62sEKVbKIe9pfBJv8oN0oRzgnovLlwL7509oLkojnCIDkrm8rGC++Wyd1yNQGZdY5Se5FFms7KGNbzlIdrXwhamNcFSFaWtb4dhSbhs53aylM2UTQE97y1byM6doKcotsYyV.e8rk+t7du26YXr3vgC2KYIKwclYlYP2e1rYy8t28tiIu1XlY0pUCe8F.Fa4Ke4A7uW8we7GG2hmUrhUDv3YW6ZWwjwl4UfQ7260Id9+KBU1sa2vXtnhJJQGZsJRqM.fe7Mey2nBKrPCOIZm3Dmnd4W9kiJGzHn00PCM3yI8b75PGA3LBz1qpvBKzzrculybliVwJVgjjxHiLzzl1zT25V2zLlwL7bMkUVYp+8u+5S9jOQ+ve3OTRR0TSMZpScpZMqYMdtNKVrn7yOeMvANP0m9zGczidTst0sNuVgv0VasZnCcnpjRJwqUQ8QO5Q03G+3UokVpO82UbEWg5Se5iNzgNjVyZViWWSYkUlFxPFh1wN1gtrK6xh9u.A.DDBl5K3fFzfhCQxokHqufLuBPBVhNyj..sEUWc04Nu7xyv63y8ce2WbckAY1szktTud82pUqtc4xUhNrPTx4BqXvibjiDvUKve5O8mhawyQO5QCX7729a+sXxXu8sucuVwE6e+62yy8G9C+AehibyMW2tb4xc4kWtOq9he6u8259a9luwmwvkKWtKpnh7ouxLyLcWe8061sa2tKqrxbeIWxk30yOm4LGOOeK0TSM4tvBKzm9K6ryNl7ZjYEqXPfPi+9+Lm4qBKrv1TwyDlvDhIiKyq.+gULX7CmJw..mEmNcpIO4IaXME6IdhmPuvK7BTGQhiN6CcjG3Adf31gNBfD0WvV5Idhmvy2+xu7Kq912954wmYEbzRezG8QpjRJQ4me9dpYT4jSN5HG4HZVyZVFdnMcdm24om+4edeZ+.G3.Zsqcs5S+zOU1rYSG9vGVRRSXBSPG8nGUyXFyPolZp97ykbxIq+5e8u5S66bm6zmZWJ.P7Pas5K3wO9wSX0WPlWAHwiDCB.bVdvG7A0pV0p7o84Mu4oG+we7DPDYds28tWedCV27MeyInnAlUAy18JZbJeGrBzG5HVscuJqrxz5V25jzoKF7iabiyqm2emB4ETPAppppRRRiYLiQaZSaJfmX4okVZpfBJvm1e0W8U0nG8n873IO4Iqku7kqd0qd0p8We5SeTlYloOsGL+aK.PzVvbCmtpq5phCQxokntgSLuBPaCrjW..Zge+u+2q4Mu44S6qd0q1m2rBh8doW5k75wScpSUomd5InnAlUApd9MlwLFkTRIEmhlDW8EbIKYId99ewu3WnNzAuu+xe0W8Us5Oe94mudy27MUxImbPMdFspOV8pWsmuunhJRKbgKLn+csKcoK9zVKO4KA.hWBljGcEWwUDGhjSKQUeAYdEf1FHwf..++8RuzKoe2u624UaVrXQEWbwJ2byMAEUlWMzPC5EewWzq1ty67NSPQCLq9pu5qB31qZ3Ce3wonQppppRkWd4s50DK1tWtb4RKdwK1yiG6XGqOWyt28t86OeFYjgV1xVVP+g2jjpt5p86ykc1Yq4O+4GRI.8fG7f9zViM1XP+yC.Ds7Nuy6zpO+XFyXBo+dYjJQbCmXdEf1NHwf..RZsqcs9jzoK4RtD8tu66p90u9kfhJys27MeSuNQnsZ0pxKu7RfQDLiBzGdSJ9tcu13F2X.ulXw18Z26d2d11V1rYSW5kdo9bMs1JNYUqZUJiLxHjFyu3K9B+9bKaYKScpScJn6qZpoFCOg46YO6YHES..Qp8rm8DvUUV7r9BdnCcnDxMbh4U.Z6fDCB.SuO5i9HetKkYkUVpjRJIf0Wj.49u+6W0TSMRRZQKZQFV.igwN6szMG5HHdqolZxmUspQrYyVbHZN8Aizrl0rB30kUVYE0G6ssss446MprJ3vgCsgMrAC+Ym4Lmo9I+jeRHMd0TSM98CNuvEtPuJN8ACiVUGRmtFQA.DOsvEtv.dMwy5V6S8TOU.ulAMnAE0GWlWAnsCRLH.L0pnhJzHG4H8psryNasgMrA08t28Hpuqqt57J4VsrNpfVW4kWtOGvB2xsbKInnAlQ0Vas5m+y+4Zm6bmA7Z+rO6yh4IGr5pqVOzC8PAbaMKc55aTzdkNeAWvE346M5CvsqcsKC+4xHiLzi8XOVHOdkVZoF1d1Ymst8a+1C49yeE5+u6286Fx8UKUas0pcricnicriImNcFQ8UrT5omtF3.GX.KN+.H1woSmZ9ye95u7W9KA7Z26d2qt5q9piowic610y8bOml+7me.u1xKu7n9t1f4ULVyM2rJszR0gO7gaSusj6RW5hrZ0ZL4lQh3ORLH.LsprxJUAETfWaCfbxIGsgMrACKNwgpJpnBu5WVsaAuEsnE40im5Tmp5V25VBJZP6QG+3GWae6aWG4HGQMzPCxoSmpt5pSUWc0phJpPaZSaJn6qANvApBKrP0u90OkQFYnjRJIc9m+4qN0oNozSOccsW60FvUK7QNxQz1111zQO5Qkc61kSmNkCGNTkUVo16d2q92+6+cPGO8u+8WicriUVsZU8nG8PIkTRxlMa5y9rOS8nG8PW60dsgz1kR5zmF3+nezORcqacS8nG8vmm2emTx+pe0uxvhydf3u96ge3G1mhSev3Lm5kmsANvAFx8UKMjgLDUVYkEQ8Q7zW+0eM+sTfXjFZnA89u+6qu7K+RUas0JmNcpFarQOqTsssss4YqyFHO3C9f5e8u9W5JuxqT8pW8RolZppCcnCJ4jSVokVZZzidzAbWsbpScJsksrEcnCcH0XiM5Ydku4a9Fsu8sOUZokFzwyce22sVzhVjxImbTO6YOUpolp99e+uu97O+yUW5RWznF0nB4s0KyqXrYNyYp+7e9OGQ8Q7zF23Fi4IwFwAtA.LgpolZbaylM2RxyW4kWdtOwINQTaLV7hWrm9dZSaZQs9s8NGNb31hEKd8uMevG7AI5vBwH6YO6wq+s9LeM6YO6X53dUW0UY33FK9ZQKZQALdxN6riawyRW5Ri5udVXgEZ3X84e9mGV8Wt4lqg8229seaH2W0We8F1WVsZMrhsynt5pKt8uYQqu17l2bD86bqwpUqFNl.lEO4S9jws+u7TlxTBX7LyYNy3V7bu268F0e8zLNuRqEmsU+5IexmLh+c1el9zmtgi4G+webLaLiT1sa2vXtnhJJQGZspPO03..miqwFaT2vMbCdsJOxO+705W+58ZaMDoZ4VPjkYevytc6dsJNyJqrB45HCPf3usnTrPvbBGFLaY4nkn8IKoSmN0a+1usOsa0pUkYlYFx8Ws0Vq9nO5i7o87xKO00t10Pt+7218Z7ie7gbe0RokVZmSch0awhEMfALfDcX.zt0d26diaiUv72wa4NWIVKbVwcsFy57JR5btUe24RyCB+isRL.LUZt4l0se62tWaSvQMpQoUtxUpzRKsn5XsksrEOeOmrwAuzRKMMoIMIs7kubYwhE8rO6yx1vFQcEUTQ54dtmyq1rXwhRM0TUW5RWTJojh5bm6rRIkTTJojh5XG6n5PG5fb4xkmsikCGNjc61USM0jZrwFU80Wu91u8akj7jb6bxImf5M4eW20co+9e+uGShmVln8byM2n9oco+1JsWy0bMgU+s8sucCa+rqGrAq23MdCCaOZ7guJojRzm7IehppppTyM2bD2ewBcnCcPcu6cWCX.CvvsqG.hNttq65zq8ZulWsc1+c7TRIEkZpopN0oNojRJI0wN1Qe963M2byxtc65Tm5Tp95qW1saWMzPCd9a4YlYlZJSYJALdt9q+50pW8piKwSztNPalmWYVyZVZricrpxJqTM0TSQb+EqbAWvEn9129FxGZKnsIRLH.LUlwLlgWuosBKrPshUrhn9oEbUUUkWuoFRLXnYYKaYZ1yd1pG8nGpyctyI5vAsCM24NWM24N2DcX3wK9huXPcBH2VTKOYIaogMrgEV8268dumgsOzgNzPtura2td0W8U8ocKVrD1wWKkVZoEVwE.Z+4FuwaT23MdiI5vvia61tMca21sknCivhYddky67NOM3AO3Hte.BEjXP.XZ7zO8Sqm8YeVOOdBSXBZoKcogbQ3OXb12g1H8DJyLhWy.N2PKWczszPFxPBq9aiabiF1d37Ak1zl1jWqXxy3ltoaJl729A.Pji4U.huHwf.vT3UdkWQO7C+vdd7jlzjzq7JuhRJojhpiiSmNU4kWtdpm5o7zVVYkk5XG4O2Bf1eb4xkV+5WuOsaylM08t28Pt+7WcfJ+7yOrJ2Cm8156LlzjlTH2W..H1i4U.h+3SpBf18Jt3h8oVrTWc0oINwIF18oKWtjKWtjc61U80Wups1Z0wN1wTUUUkOW6fFzfB6wA.nsr8rm8X3JmnfBJHr5O+UGnBm51zIO4I0+7e9O8o8LxHCCqyhM0TS5we7GWUVYkZVyZVrpkA.R.XdEf3ORLH.ZWaG6XGZTiZT9ztQmzYwJbhDCf1q9fO3CLr8vc6d4u5.Ud4kWH2Wqbkqzv1ui63NLbUbuhUrBM6YOaIc5UlxC8POTHOl..Hxv7J.weQ2yUb.f1P9rO6yzvG9vSzgg5e+6ehND..hI17l2rgs+i+w+3vp+7WcfJmbxIj6qEtvEZX69qX7O+4OeOeuUqVC4wC..QNlWAH9iDCBf1kN9wOtF0nFkgaEg3Mdi..n8H+UGnrZ0p5YO6YH2e9qNPkWd4ExmN46ae6Sacqa0v95xu7K2m1Ku7x855+o+zeZHMd..Hxw7J.IFjXP.ztSyM2rtka4VzANvARzghjj5ae6ahND..h57WcfZjibjgU+4u5.0HFwHB49xnO7ljzcdm2ogs+O9G+COe+i7HORH+AFA.Pji4U.RLHwf.ncmhKtXsoMsoDcXHIoLyLSkZpolnCC.fnN+UGnF5PGZX0e9qNPEN0Upu3K9BCaericr9z1+8+9e0S+zOsmG+K+k+xPd7fT80Wugs2byMGmiD.btJlWAsTCMzfgsa2t83bjz9GIFD.s6bricrDcH3w.G3.Szg..PLQIkThgsGNEzcI+WGnBm5JkQa4rLxHCkd5o6Ua1saWScpS0yierG6wT26d2C4wyrq5pqVG9vG1vmae6aew4nA.mqh4UvY3xkKUVYkY3ysm8rm3bzz9GIFD.s6b1S0.rG9C..GvPRDEDUPmHMfALfDcH..D04zoSUbwE6S6VsZUW7Eewgb+0Z0AJKVrDx82vF1v7ostzkt30iangFzce22s14N2ojN8J7dFyXFg7XYV4vgCUYkUp0st0oq65tN+dcSXBSPqbkqTG5PGRM0TSwwHD.mKg4UPyM2r95u9q0G9genl1zllJszRM75tm64dzBVvBzd26dUc0UWbNJaex2yTa.fywMtwMN41s6DcX..ztk+pCTidziNr5ucricXX6ETPAgU+kUVYoLxHCUUUU4osCbfCnJqrR0qd0KsqcsKcW20c44CuIIspUsJ00t10vZ7Zu6QezGUO2y8bddbnbvd8+9e+OcC2vM3Uas7CkeoW5kxp+..LuhIya+1ust4a9l873P8.i7du260qGe1I6cW6ZWJyLyL7CPSFRLH....BI0TSMF1tQ0ZofwINwILr8q4Ztlvp+5PG5fV25VmxO+785Caz+92eI48G.whEKZiabixlMag0XYFrksrkP9Cs0ZZYeUc0UG05W.btKlWwbozRKMlMuhzo2JxH3QhAA...PH4JthqPVrXwq2H9DlvDzvG9vCq9avCdv9zVQEUjxImbB6XL6ryVadyaVSZRSxyoT+Y+AGl3Dmn9i+w+n5Se5SXONlIVrXQolZpJ4jSVokVZJkTRQcricTImbxJkTRQIkTRpCc3zUpHWtboFarQ4vgCY2tc0XiMJmNcp5qudY2tc0PCMnZqsVckW4Ulf+sB.sEv7JlSsbdkyLWRJojhRN4jURIkjmujN87JNb3vy7JM0TSpwFazm4UtjK4RZSUZoNWv44l8aG...RPJu7xMrVbN6YOa8vO7Cm.hHDr1291mVxRVhpolZTAETfF8nGsm27d3nrxJSu1q8ZpwFaTETPAZjibj57O+yOhiylatYURIknctycpu7K+RkRJonALfAnAO3AqevO3GDw8O..hNXdEbtNGNbnjSNYeZunhJRKdwKNADQAGRLH...RXHwf....n8fyUSLHmJw.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XB0wDc.....b1dq25szwO9wiJ80Dm3DUt4laTou....P6GG3.GPO+y+7Qk9xkKWQk9IdiDCB..f1b15V2p15V2ZTou1+92udq25shJ8E....Z+3XG6X5YdlmIQGFITrUhA........LgHwf.........lPjXP.........SHRLH...RXRN4jSzg.....fo0441sa2I5f....lWm7jmTM0TSwr9OojRRW3Edgwr9G....maxgCG5Dm3DwzwnScpSpqcsqwzwHRPhAA........LgXqDC........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........SHRLH........fIDIFD........vDhDCB........XBQhAA........LgHwf.........lPjXP.........Sn+e.ifSLSWk852M.....IUjSD4pPfIH" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-28",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 416.0, 220.0, 245.0, 65.155520995334371 ],
									"pic" : "/Users/davide/Desktop/Screenshot 2026-03-02 at 15.12.46.png"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 197.0, 199.0, 20.0 ],
									"text" : "normalize values with formula:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 399.0, 167.0, 167.0, 20.0 ],
									"text" : "clip values between -1. and 1."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 419.0, 360.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 362.0, 360.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 305.0, 360.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 248.0, 360.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 248.0, 326.0, 247.0, 22.0 ],
									"text" : "hadamard~ 2 @normalized 0 @clip_output 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "number~",
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 113.0, 138.0, 56.0, 22.0 ],
									"sig" : 0.5
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "number~",
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 156.0, 166.0, 56.0, 22.0 ],
									"sig" : -0.5
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 124.0, 321.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 92.0, 349.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 61.0, 376.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 29.0, 403.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "number~",
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 71.0, 166.0, 56.0, 22.0 ],
									"sig" : -1.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "number~",
									"mode" : 1,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 29.0, 138.0, 56.0, 22.0 ],
									"sig" : 3.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "signal", "signal", "" ],
									"patching_rect" : [ 29.0, 215.0, 145.5, 22.0 ],
									"text" : "hadamard~ 2"
								}

							}
, 							{
								"box" : 								{
									"attr" : "normalized",
									"id" : "obj-2",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 264.0, 196.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "clip_output",
									"id" : "obj-12",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 248.0, 166.0, 150.0, 22.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 3 ],
									"order" : 0,
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 2 ],
									"order" : 0,
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"order" : 0,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 2 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 3 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 29.0, 42.0, 47.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "Screenshot 2026-03-02 at 15.12.46.png",
				"bootpath" : "~/Desktop",
				"patcherrelativepath" : "../..",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "hadamard~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "helpname.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mc.hadamard~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
