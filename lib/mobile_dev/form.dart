/* final _formKey = GlobalKey<FormState>();
  String name = '';
  String pass = '';
  String email = '';
  final nameController = TextEditingController();
  final passController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(25.0),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Form(
                key: _formKey,
                child: ListView(children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Name :"),
                    controller: nameController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "E-Mail :"),
                    controller: passController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "E-Mail can't be empty";
                      }
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password :"),
                    controller: emailController,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Please enter Phone number";
                      }
                    },
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      if (_formKey.currentState!.validate())
                        {
                          setState(() {
                            name = nameController.text;
                            pass = passController.text;
                            email = emailController.text;
                          })
                        }
                    },
                    child: Text('Submit'),
                  ),
                  Text(name),
                  Text(email),
                  Text(pass),
                ]))));*/