resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name          = "HighCPU"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 300
  statistic           = "Average"
  threshold           = 70
  alarm_description   = "Alarm if CPU > 70%"
  dimensions = {
    InstanceId = aws_instance.web_server.id
  }
}
