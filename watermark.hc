local cmds = Drawing.new("Text")
cmds.Visible = true
cmds.Size = 16
cmds.Color = Color3.fromRGB(255, 234, 0)
cmds.Text = "TempleOS Alt Control"
cmds.Font = Drawing.Fonts.Plex
cmds.Outline = true
cmds.OutlineColor = Color3.new(.1,.1,.1)
cmds.Position = Vector2.new((size.X - a.TextBounds.X) - 10, (size.Y - a.TextBounds.Y) - 25)
