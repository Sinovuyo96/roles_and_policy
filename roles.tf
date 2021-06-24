#  CodePipeline_Role

resource "aws_iam_role" "pipeline_role" {
  name = "pipeline_role"

  assume_role_policy = "${file("pipeline_assume_policy")}"
}


#  CodePipeline Policy

resource "aws_iam_role_policy" "pipeline_policy" {
  name = "codepipeline_policy"
  role = aws_iam_role.pipeline_role.id

  policy = "${file("policy.json")}"

}