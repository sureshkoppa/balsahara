IOsys={
    fso:null
};

IOsys.ready=function(){
    try{
        if(!this.fso)this.fso=new ActiveXObject("Scripting.FileSystemObject");
        return-1
        }catch(e){
        return 0
        }
    };

IOsys.FileExists=function(i){
    if(!this.fso&&!this.ready())return 0;
    return this.fso.FileExists(i)
    };
    
IOsys.FolderExists=function(i){
    if(!this.fso&&!this.ready())return 0;
    return this.fso.FolderExists(i)
    };
    
IOsys.GetFile=function(i){
    if(!this.FileExists(i))return null;
    return new IOLocalFile(this.fso.GetFile(i))
    };
    
IOsys.GetFolder=function(i){
    if(!this.FolderExists(i))return null;
    return new IOLocalFolder(this.fso.GetFolder(i))
    };
    
IOsys.OpenTextFile=function(i,I,l,o){
    if(!this.fso&&!this.ready())return null;
    try{
        var O=new IOLocalTextStream(this.fso.OpenTextFile(i,I,l,o));
        if(O)return O
            }catch(e){
        debugger;
        return 0
        }
    };

IOsys.readString=function(i){
    var I;
    if(I=IOsys.GetFile(i))return I.OpenAsTextStream(1,-1).ReadAll();else return 0
        };
        
IOsys.saveString=function(i,I){
    var l=IOsys.OpenTextFile(filename,2,true,-1);
    if(!l)return 0;
    switch(typeof I){
        case'string':
            l.Write(I);
            break;
        case'array':
            for(var o=0;o<I.length;o++)l.write(I[o]);
            break;
        default:
            l.Close();
            return 0
            }
            l.Close()
    };
    
IOLocalFile=function(i){
    this.File=i||null
    };
    
IOLocalFile.prototype.OpenAsTextStream=function(i,I){
    return new IOLocalTextStream(this.File.OpenAsTextStream(i||1,I||-1))
    };
    
IOLocalFile.prototype.Size=function(){
    return this.File.Size
    };
    
IOLocalTextStream=function(i){
    this.ts=i||null
    };
    
IOLocalTextStream.prototype.ReadLine=function(){
    return this.ts.ReadLine()
    };
    
IOLocalTextStream.prototype.Read=function(i){
    return this.ts.Read(i)
    };
    
IOLocalTextStream.prototype.ReadAll=function(){
    return this.ts.ReadAll()
    };
    
IOLocalTextStream.prototype.Skip=function(i){
    this.ts.Skip(i)
    };
    
IOLocalTextStream.prototype.Write=function(i){
    this.ts.Write(i)
    };
    
IOLocalTextStream.prototype.Close=function(){
    this.ts.Close()
    };
    
IOLocalFolder=function(i){
    this.Folder=i||null;
    this.Name=this.Folder.Name
    };
    
IOLocalFolder.prototype.GetFiles=function(){
    return this.Folder.Files
    };
