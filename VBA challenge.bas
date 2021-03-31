Attribute VB_Name = "Module2"
Sub Ticker()
    
    'VBA challenge
    
    
    For Each ws In Worksheets
    
    
    
        
        ws.Range("J1").Value = "Ticker"
        
        
        ws.Range("k1").Value = "Yearly Change"
        
        
        ws.Range("l1").Value = "Percent Change"
        

        
        
        ws.Range("m1").Value = "Total Stock Volume"
        
        
        
        lastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
        
        
        Dim Ticker        As String
        
        
        Dim opening   As Double
        
        
        Dim closing       As Double
        
        
        Dim volume      As Integer
        
        
        Dim Increase As Double
        
        
        Dim Decrease As Double
        
        
        Dim beginning As Long
        
        
        Dim ending  As Long
        
        vol = 0
        
        beginning = 99999999
        
        Decrease = 100
        
        
        Dim summarytable As Integer
        
        summarytable = 2
        
        For Row = 2 To lastRow
        
        
            
            If ws.Cells(Row + 1, 1).Value <> ws.Cells(Row, 1).Value Then
            
            
                Ticker = ws.Cells(Row, 1).Value
                
                
                ws.Cells(summarytable, 10).Value = Ticker
                
                
                vol = vol + ws.Cells(Row, 7).Value
                
                ws.Cells(summarytable, 13).Value = vol
                
                
                
                If Cells(Row, 2) > ending Then
                
                
                    ending = Cells(Row, 2)
                    
                    
                    closing = Cells(Row, 6)
                    
                    
                End If
                
                
                
                If Cells(Row, 2) < beginning Then
                
                
                
                    beginning = Cells(Row, 2)
                    
                    
                    opening = Cells(Row, 3)
                    
                    
                    
                End If
                
                
                
                Cells(summarytable, 11).Value = closing - opening
                
                
                If opening = 0 Then
                
                
                    Cells(summarytable, 12).Value = 0
                    
                    
                Else
                
                
                    Cells(summarytable, 12).Value = (closing - opening) / opening
                    
                    
                End If
                
                
                
                summarytable = summarytable + 1
                
                
                
                vol = 0
                
                
                closing = 0
                
                
                ending = 0
                
                
                beginning = 100000
                
                
                
            Else
            
            
                vol = vol + ws.Cells(Row, 7).Value
                
                
                If Cells(Row, 2) > ending Then
                
                
                    ending = Cells(Row, 2)
                    
                    
                    closing = Cells(Row, 6)
                    
                    
                End If
                
                
                
                If Cells(Row, 2) < beginning Then
                
                
                    beginning = Cells(Row, 2)
                    
                    
                    opening = Cells(Row, 3)
                    
                    
                End If
                
                
            End If
            
            
            
        Next
        
       
    Next ws
    
    
End Sub

















