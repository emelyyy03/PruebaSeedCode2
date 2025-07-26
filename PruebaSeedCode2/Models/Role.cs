using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PruebaSeedCode2.Models;

public partial class Role
{
    public int Id { get; set; }

    [Required(ErrorMessage = "El nombre es obligatorio.")]
    [Display(Name = "Nombre de Rol")]
    public string Name { get; set; } = null!;

    public virtual ICollection<User> Users { get; set; } = new List<User>();
}
